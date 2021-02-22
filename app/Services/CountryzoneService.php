<?php

namespace App\Services;

use App\Models\CountryzoneModel;
use Illuminate\Support\Facades\Config;

class CountryzoneService
{
    private $CountryzoneModel;

    public function __construct()
    {
        $this->CountryzoneModel = new CountryzoneModel();
    }

    public function execute(array $requestedData, int $adminId)
    {
        return $this->CountryzoneModel->storeCountryzone($requestedData, $adminId);
    }

    public function update(int $countryzoneId, array $requestedData)
    {
        return $this->CountryzoneModel->updatecountryzone($countryzoneId, $requestedData);
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

    public function loadCountryzone()
    {
        return $this->CountryzoneModel->getCountryzoneSortedByCreatedAt();
    }

    public function loadPagination()
    {
        return $this->CountryzoneModel->getPaginate();
    }

    public function loadCountryzones(int $countryzoneId)
    {
        return $this->CountryzoneModel::find($countryzoneId);
    }

    public function loadIsActiveFunction(int $countryzoneId, int $value)
    {
        return $this->CountryzoneModel->setActive($countryzoneId, $value);
    }

    public function pluckCompanies()
    {
        return $this->CountryzoneModel->getPluckCompanies();
    }

    public function loadCountCountryzone()
    {
        return $this->CountryzoneModel->countCountryzone();
    }
}