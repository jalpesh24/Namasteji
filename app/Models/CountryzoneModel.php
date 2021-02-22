<?php

namespace App\Models;

use App\Services\CountryzoneService;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Config;

class CountryzoneModel extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];

    protected $table = 'countryzone';

    // public function companies()
    // {
    //     return $this->belongsTo(CompaniesModel::class);
    // }

    public function storeCountryzone(array $requestedData, int $adminId) : int
    {
       
        $CountryzoneHelper = new CountryzoneService();
        // $dataToInsert = $CountryzoneHelper->loadCalculateNetAndVatByGivenGross($requestedData['gross']);

        return $this->insertGetId(
            [
                'name' => $requestedData['name']
            ]
        );
    }

    public function updateCountryzone(int $countryzoneId, array $requestedData) : int
    {
        // $CountryzoneHelper = new CountryzoneService();
        // $dataToInsert = $CountryzoneHelper->loadCalculateNetAndVatByGivenGross($requestedData['gross']);

        return $this->where('id', $countryzoneId)->update(
            [
                'name' => $requestedData['name'],
                'updated_at' => now(),
                'is_active' => 1
            ]
        );
    }

    public function setActive(int $countryzoneId, int $activeType) : int
    {
        return $this->where('id', '=', $countryzoneId)->update(
            [
                'is_active' => $activeType,
                'updated_at' => now()
            ]
        );
    }

    public function countCountryzone() : int
    {
        return $this->get()->count();
    }

    public function getPluckCompanies()
    {
        return CompaniesModel::pluck('name', 'id');
    }

    public function getCountryzoneSortedByCreatedAt()
    {
        return $this->all()->sortByDesc('created_at');
    }

    public function getPaginate()
    {
        return $this->paginate(Config::get('crm_settings.pagination_size'));
    }
}
