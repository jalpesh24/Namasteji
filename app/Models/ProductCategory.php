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
    protected $fillable = ['name'];
    protected $dates = ['deleted_at'];

    
    public function storeProduct(array $requestedData, int $adminId) : int
    {
        return $this->insertGetId(
            [
                'name' => $requestedData['name'],
                'market_category' => $requestedData['market_category'],                
                'created_at' => now(),
                'is_active' => 1               
            ]
        );
    }

    public function updateProduct(int $productId, array $requestedData) : int
    {
        return $this->where('id', '=', $productId)->update(
            [
                'name' => $requestedData['name'],
                'market_category' => $requestedData['market_category'],                
                'updated_at' => now()
            ]
        );
    }

    public function setActive(int $productId, int $activeType) : int
    {
        return $this->where('id', '=', $productId)->update(
            [
                'is_active' => $activeType,
                'updated_at' => now()
            ]
        );
    }

    public function countProducts() : int
    {
        return $this->get()->count();
    }

    public function getProductsByCreatedAt()
    {
        return $this->all()->sortBy('created_at', 0, true)->slice(0, 5);
    }

    public function findClientByGivenClientId(int $productId)
    {
        $query = $this->find($productId);

        Arr::add($query, 'salesCount', count($query->sales));

        return $query;
    }

    public function getProducts()
    {
        return $this->all()->sortBy('created_at');
    }

    

    public function getProduct(int $productId) : self
    {
        return $this->find($productId);
    }
}
