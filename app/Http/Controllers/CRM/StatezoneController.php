<?php

namespace App\Http\Controllers\CRM;

use App\Http\Controllers\Controller;
use App\Http\Requests\StatezoneStoreRequest;
use App\Http\Requests\StatezoneUpdateRequest;
use App\Services\StatezoneService;
use App\Services\SystemLogService;
use View;
use Illuminate\Http\Request;
Use Illuminate\Support\Facades\Redirect;

class StatezoneController extends Controller
{
    private $statezoneService;
    private $systemLogsService;

    public function __construct()
    {
        $this->middleware('auth');

        $this->statezoneService = new StatezoneService();
        $this->systemLogsService = new SystemLogService();
    }

    public function processRenderCreateForm()
    {
        return View::make('crm.statezone.create');
    }

    public function processShowstatezoneDetails($StatezoneId)
    {
        return View::make('crm.statezone.show')->with(['statezone' => $this->statezoneService->loadStatezones($StatezoneId)]);
    }

    public function processListOfstatezone()
    {
        return View::make('crm.statezone.index')->with(
            [
                'statezone' => $this->statezoneService->loadstatezone(),
                'statezonePaginate' => $this->statezoneService->loadPagination()
            ]
        );
    }

    public function processRenderUpdateForm($StatezoneId)
    {
        return View::make('crm.statezone.edit')->with(
            [
                'statezone' => $this->statezoneService->loadStatezones($StatezoneId),
                // 'dataWithPluckOfCompanies' => $this->statezoneService->pluckCompanies()
            ]
        );
    }

    public function processStoreStatezone(StatezoneStoreRequest $request)
    {
        $storedStatezoneId = $this->statezoneService->execute($request->validated(), $this->getAdminId());

        if ($storedStatezoneId) {
            $this->systemLogsService->loadInsertSystemLogs('statezoneModel has been add with id: ' . $storedStatezoneId, $this->systemLogsService::successCode, $this->getAdminId());
            return Redirect::to('statezone')->with('message_success', $this->getMessage('messages.SuccessstatezoneStore'));
        } else {
            return Redirect::back()->with('message_danger', $this->getMessage('messages.ErrorstatezoneStore'));
        }
    }

    public function processUpdateStatezone(StatezoneUpdateRequest $request, $StatezoneId)
    {
        if ($this->statezoneService->update($StatezoneId, $request->validated())) {
            return Redirect::to('statezone')->with('message_success', $this->getMessage('messages.SuccessstatezoneUpdate'));
        } else {
            return Redirect::back()->with('message_success', $this->getMessage('messages.ErrorstatezoneUpdate'));
        }
    }

    public function processDeleteStatezone($StatezoneId)
    {
        $dataOfstatezone = $this->statezoneService->loadStatezone($StatezoneId);

        $dataOfstatezone->delete();

        $this->systemLogsService->loadInsertSystemLogs('statezoneModel has been deleted with id: ' . $dataOfstatezone->id, $this->systemLogsService::successCode, $this->getAdminId());

        return Redirect::to('statezone')->with('message_success', $this->getMessage('messages.SuccessstatezoneDelete'));
    }

    public function processstatezoneetIsActive($StatezoneId, $value)
    {
        if ($this->statezoneService->loadIsActiveFunction($StatezoneId, $value)) {
            $this->systemLogsService->loadInsertSystemLogs('statezoneModel has been enabled with id: ' . $StatezoneId, $this->systemLogsService::successCode, $this->getAdminId());
            return Redirect::to('statezone')->with('message_success', $this->getMessage('messages.SuccessstatezoneActive'));
        } else {
            return Redirect::back()->with('message_danger', $this->getMessage('messages.ErrorstatezoneActive'));
        }
    }
}
