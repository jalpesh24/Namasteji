<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Arr;
use Config;

class ProductCategory extends Model
{
    use SoftDeletes;

    protected $table = 'productcategory';
    protected $fillable = ['name','market_category'];
    protected $dates = ['deleted_at'];

    
    public function storeProductCategory(array $requestedData, int $adminId) : int
    {
        //dd($requestedData);
        return $this->insert(
            [
                'name' => $requestedData['name'],
                'market_category' => $requestedData['market_category'],                
                'created_at' => now(),
                'is_active' => 1               
            ]
        );
    }

    public function updateProductCategory(int $ProductCategoryId, array $requestedData) : int
    {
        return $this->where('id', '=', $ProductCategoryId)->update(
            [
                'name' => $requestedData['name'],
                'market_category' => $requestedData['market_category'],                
                'updated_at' => now()
            ]
        );
    }

    public function setActive(int $ProductCategoryId, int $activeType) : int
    {
        return $this->where('id', '=', $ProductCategoryId)->update(
            [
                'is_active' => $activeType,
                'updated_at' => now()
            ]
        );
    }

    public function countProductCategorys() : int
    {
        return $this->get()->count();
    }

    public function getProductCategorysByCreatedAt()
    {
        return $this->all()->sortBy('created_at', 0, true)->slice(0, 5);
    }

    public function findClientByGivenClientId(int $ProductCategoryId)
    {
        $query = $this->find($ProductCategoryId);

        Arr::add($query, 'salesCount', count($query->sales));

        return $query;
    }

    public function getProductCategorys()
    {
        return $this->all()->sortBy('created_at');
    }

    

    public function getProductCategory(int $ProductCategoryId) : self
    {
        return $this->find($ProductCategoryId);
    }
}