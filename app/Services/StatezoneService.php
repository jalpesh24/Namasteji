<?php

namespace App\Services;

use App\Models\StatezoneModel;
use Illuminate\Support\Facades\Config;

class StatezoneService
{
    private $StatezoneModel;

    public function __construct()
    {
        $this->StatezoneModel = new StatezoneModel();
    }

    public function execute(array $requestedData, int $adminId)
    {
        return $this->StatezoneModel->storeStatezone($requestedData, $adminId);
    }

    public function update(int $statezoneId, array $requestedData)
    {
        return $this->StatezoneModel->updatestatezone($statezoneId, $requestedData);
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

    public function loadStatezone()
    {
        return $this->StatezoneModel->getStatezoneSortedByCreatedAt();
    }

    public function loadPagination()
    {
        return $this->StatezoneModel->getPaginate();
    }

    public function loadStatezones(int $statezoneId)
    {
        return $this->StatezoneModel::find($statezoneId);
    }

    public function loadIsActiveFunction(int $statezoneId, int $value)
    {
        return $this->StatezoneModel->setActive($statezoneId, $value);
    }

    public function pluckCompanies()
    {
        return $this->StatezoneModel->getPluckCompanies();
    }

    public function loadCountStatezone()
    {
        return $this->StatezoneModel->countStatezone();
    }
}