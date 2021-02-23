<?php

namespace App\Models;

use App\Services\DistrictzoneService;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Config;

class DistrictzoneModel extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];

    protected $table = 'districtzone';

    // public function companies()
    // {
    //     return $this->belongsTo(CompaniesModel::class);
    // }

    public function storeDistrictzone(array $requestedData, int $adminId) : int
    {
       
        $DistrictzoneHelper = new DistrictzoneService();
        // $dataToInsert = $DistrictzoneHelper->loadCalculateNetAndVatByGivenGross($requestedData['gross']);

        return $this->insertGetId(
            [
                'name' => $requestedData['name']
            ]
        );
    }

    public function updateDistrictzone(int $districtzoneId, array $requestedData) : int
    {
        // $districtzoneHelper = new districtzoneService();
        // $dataToInsert = $districtzoneHelper->loadCalculateNetAndVatByGivenGross($requestedData['gross']);

        return $this->where('id', $districtzoneId)->update(
            [
                'name' => $requestedData['name'],
                'updated_at' => now(),
                'is_active' => 1
            ]
        );
    }

    public function setActive(int $districtzoneId, int $activeType) : int
    {
        return $this->where('id', '=', $districtzoneId)->update(
            [
                'is_active' => $activeType,
                'updated_at' => now()
            ]
        );
    }

    public function countDistrictzone() : int
    {
        return $this->get()->count();
    }

    public function getPluckCompanies()
    {
        return CompaniesModel::pluck('name', 'id');
    }

    public function getDistrictzoneSortedByCreatedAt()
    {
        return $this->all()->sortByDesc('created_at');
    }

    public function getPaginate()
    {
        return $this->paginate(Config::get('crm_settings.pagination_size'));
    }
}
