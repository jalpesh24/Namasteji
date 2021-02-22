<?php

namespace App\Http\Controllers\CRM;

use App\Http\Controllers\Controller;
use App\Http\Requests\CountryzoneStoreRequest;
use App\Http\Requests\CountryzoneUpdateRequest;
use App\Services\CountryzoneService;
use App\Services\SystemLogService;
use View;
use Illuminate\Http\Request;
Use Illuminate\Support\Facades\Redirect;

class CountryzoneController extends Controller
{
    private $countryzoneService;
    private $systemLogsService;

    public function __construct()
    {
        $this->middleware('auth');

        $this->countryzoneService = new CountryzoneService();
        $this->systemLogsService = new SystemLogService();
    }

    public function processRenderCreateForm()
    {
        return View::make('crm.countryzone.create');
    }

    public function processShowcountryzoneDetails($CountryzoneId)
    {
        return View::make('crm.countryzone.show')->with(['countryzone' => $this->countryzoneService->loadCountryzones($CountryzoneId)]);
    }

    public function processListOfcountryzone()
    {
        return View::make('crm.countryzone.index')->with(
            [
                'countryzone' => $this->countryzoneService->loadcountryzone(),
                'countryzonePaginate' => $this->countryzoneService->loadPagination()
            ]
        );
    }

    public function processRenderUpdateForm($CountryzoneId)
    {
        return View::make('crm.countryzone.edit')->with(
            [
                'Countryzone' => $this->countryzoneService->loadCountryzone($CountryzoneId),
                // 'dataWithPluckOfCompanies' => $this->countryzoneService->pluckCompanies()
            ]
        );
    }

    public function processStoreCountryzone(CountryzoneStoreRequest $request)
    {
        $storedCountryzoneId = $this->countryzoneService->execute($request->validated(), $this->getAdminId());

        if ($storedCountryzoneId) {
            $this->systemLogsService->loadInsertSystemLogs('countryzoneModel has been add with id: ' . $storedCountryzoneId, $this->systemLogsService::successCode, $this->getAdminId());
            return Redirect::to('countryzone')->with('message_success', $this->getMessage('messages.SuccesscountryzoneStore'));
        } else {
            return Redirect::back()->with('message_danger', $this->getMessage('messages.ErrorcountryzoneStore'));
        }
    }

    public function processUpdateCountryzone(CountryzoneUpdateRequest $request, $CountryzoneId)
    {
        if ($this->countryzoneService->update($CountryzoneId, $request->validated())) {
            return Redirect::to('countryzone')->with('message_success', $this->getMessage('messages.SuccesscountryzoneUpdate'));
        } else {
            return Redirect::back()->with('message_success', $this->getMessage('messages.ErrorcountryzoneUpdate'));
        }
    }

    public function processDeleteCountryzone($CountryzoneId)
    {
        $dataOfcountryzone = $this->countryzoneService->loadCountryzone($CountryzoneId);

        $dataOfcountryzone->delete();

        $this->systemLogsService->loadInsertSystemLogs('countryzoneModel has been deleted with id: ' . $dataOfcountryzone->id, $this->systemLogsService::successCode, $this->getAdminId());

        return Redirect::to('countryzone')->with('message_success', $this->getMessage('messages.SuccesscountryzoneDelete'));
    }

    public function processcountryzoneetIsActive($CountryzoneId, $value)
    {
        if ($this->countryzoneService->loadIsActiveFunction($CountryzoneId, $value)) {
            $this->systemLogsService->loadInsertSystemLogs('countryzoneModel has been enabled with id: ' . $CountryzoneId, $this->systemLogsService::successCode, $this->getAdminId());
            return Redirect::to('countryzone')->with('message_success', $this->getMessage('messages.SuccesscountryzoneActive'));
        } else {
            return Redirect::back()->with('message_danger', $this->getMessage('messages.ErrorcountryzoneActive'));
        }
    }
}
