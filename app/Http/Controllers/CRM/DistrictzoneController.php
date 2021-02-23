<?php

namespace App\Http\Controllers\CRM;

use App\Http\Controllers\Controller;
use App\Http\Requests\DistrictzoneStoreRequest;
use App\Http\Requests\DistrictzoneUpdateRequest;
use App\Services\DistrictzoneService;
use App\Services\SystemLogService;
use View;
use Illuminate\Http\Request;
Use Illuminate\Support\Facades\Redirect;

class DistrictzoneController extends Controller
{
    private $districtzoneService;
    private $systemLogsService;

    public function __construct()
    {
        $this->middleware('auth');

        $this->districtzoneService = new DistrictzoneService();
        $this->systemLogsService = new SystemLogService();
    }

    public function processRenderCreateForm()
    {
        return View::make('crm.districtzone.create');
    }

    public function processShowdistrictzoneDetails($DistrictzoneId)
    {
        return View::make('crm.districtzone.show')->with(['districtzone' => $this->districtzoneService->loadDistrictzones($DistrictzoneId)]);
    }

    public function processListOfdistrictzone()
    {
        return View::make('crm.districtzone.index')->with(
            [
                'districtzone' => $this->districtzoneService->loaddistrictzone(),
                'districtzonePaginate' => $this->districtzoneService->loadPagination()
            ]
        );
    }

    public function processRenderUpdateForm($DistrictzoneId)
    {
        return View::make('crm.districtzone.edit')->with(
            [
                'districtzone' => $this->districtzoneService->loadDistrictzones($DistrictzoneId),
                // 'dataWithPluckOfCompanies' => $this->districtzoneService->pluckCompanies()
            ]
        );
    }

    public function processStoreDistrictzone(DistrictzoneStoreRequest $request)
    {
        $storedDistrictzoneId = $this->districtzoneService->execute($request->validated(), $this->getAdminId());

        if ($storedDistrictzoneId) {
            $this->systemLogsService->loadInsertSystemLogs('districtzoneModel has been add with id: ' . $storedDistrictzoneId, $this->systemLogsService::successCode, $this->getAdminId());
            return Redirect::to('districtzone')->with('message_success', $this->getMessage('messages.SuccessdistrictzoneStore'));
        } else {
            return Redirect::back()->with('message_danger', $this->getMessage('messages.ErrordistrictzoneStore'));
        }
    }

    public function processUpdateDistrictzone(DistrictzoneUpdateRequest $request, $DistrictzoneId)
    {
        if ($this->districtzoneService->update($DistrictzoneId, $request->validated())) {
            return Redirect::to('districtzone')->with('message_success', $this->getMessage('messages.SuccessdistrictzoneUpdate'));
        } else {
            return Redirect::back()->with('message_success', $this->getMessage('messages.ErrordistrictzoneUpdate'));
        }
    }

    public function processDeleteDistrictzone($DistrictzoneId)
    {
        $dataOfdistrictzone = $this->districtzoneService->loadDistrictzone($DistrictzoneId);

        $dataOfdistrictzone->delete();

        $this->systemLogsService->loadInsertSystemLogs('districtzoneModel has been deleted with id: ' . $dataOfdistrictzone->id, $this->systemLogsService::successCode, $this->getAdminId());

        return Redirect::to('districtzone')->with('message_success', $this->getMessage('messages.SuccessdistrictzoneDelete'));
    }

    public function processdistrictzoneetIsActive($DistrictzoneId, $value)
    {
        if ($this->districtzoneService->loadIsActiveFunction($DistrictzoneId, $value)) {
            $this->systemLogsService->loadInsertSystemLogs('districtzoneModel has been enabled with id: ' . $DistrictzoneId, $this->systemLogsService::successCode, $this->getAdminId());
            return Redirect::to('districtzone')->with('message_success', $this->getMessage('messages.SuccessdistrictzoneActive'));
        } else {
            return Redirect::back()->with('message_danger', $this->getMessage('messages.ErrordistrictzoneActive'));
        }
    }
}
