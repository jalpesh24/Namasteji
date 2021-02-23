<?php

namespace App\Services;

use App\Models\DistrictzoneModel;
use Illuminate\Support\Facades\Config;

class DistrictzoneService
{
    private $DistrictzoneModel;

    public function __construct()
    {
        $this->DistrictzoneModel = new DistrictzoneModel();
    }

    public function execute(array $requestedData, int $adminId)
    {
        return $this->DistrictzoneModel->storeDistrictzone($requestedData, $adminId);
    }

    public function update(int $districtzoneId, array $requestedData)
    {
        return $this->DistrictzoneModel->updatedistrictzone($districtzoneId, $requestedData);
    }

    // public function loadCalculateNetAndVatByGivenGross($gross)
    // {
    //     $getTaxValueFromConfig = Config::get('crm_settings.invoice_tax')  / 100;
    //     $getGrossValueFromInput = $gross;

    //     $vat = $getGrossValueFromInput * $getTaxValueFromConfig;

    //     $net = $getGrossValueFromInput - $vat;

    //     return $result = [
    //         'net' => $net,
    //         'vat' => $vat,
    //     ];
    // }

    public function loadDistrictzone()
    {
        return $this->DistrictzoneModel->getDistrictzoneSortedByCreatedAt();
    }

    public function loadPagination()
    {
        return $this->DistrictzoneModel->getPaginate();
    }

    public function loadDistrictzones(int $districtzoneId)
    {
        return $this->DistrictzoneModel::find($districtzoneId);
    }

    public function loadIsActiveFunction(int $districtzoneId, int $value)
    {
        return $this->DistrictzoneModel->setActive($districtzoneId, $value);
    }

    public function pluckCompanies()
    {
        return $this->DistrictzoneModel->getPluckCompanies();
    }

    public function loadCountDistrictzone()
    {
        return $this->DistrictzoneModel->countDistrictzone();
    }
}