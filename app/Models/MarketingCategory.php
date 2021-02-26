<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Arr;
use Config;

class MarketingCategory extends Model
{
    use SoftDeletes;

    protected $table = 'marketingcategory';
    protected $fillable = ['name'];

    protected $dates = ['deleted_at'];
    
    public function storeMarketingCategory(array $requestedData, int $adminId) : int
    {
        return $this->insertGetId(
            [
                'name' => $requestedData['name'],
                'created_at' => now(),
                'is_active' => 1               
            ]
        );
    }

    public function updateMarketingCategory(int $MarketingCategoryId, array $requestedData) : int
    {
        return $this->where('id', '=', $MarketingCategoryId)->update(
            [
                'name' => $requestedData['name'],
                'updated_at' => now()
            ]
        );
    }

    public function setActive(int $MarketingCategoryId, int $activeType) : int
    {
        return $this->where('id', '=', $MarketingCategoryId)->update(
            [
                'is_active' => $activeType,
                'updated_at' => now()
            ]
        );
    }

    public function countMarketingCategorys() : int
    {
        return $this->get()->count();
    }

    public function getMarketingCategorysByCreatedAt()
    {
        return $this->all()->sortBy('created_at', 0, true)->slice(0, 5);
    }

    public function findClientByGivenClientId(int $MarketingCategoryId)
    {
        $query = $this->find($MarketingCategoryId);

        Arr::add($query, 'salesCount', count($query->sales));

        return $query;
    }

    public function getMarketingCategorys()
    {
        return $this->all()->sortBy('created_at');
    }

    
    public function getMarketingCategory(int $MarketingCategoryId) : self
    {
        return $this->find($MarketingCategoryId);
    }
}
