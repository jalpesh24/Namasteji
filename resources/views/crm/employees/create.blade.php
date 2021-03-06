@extends('layouts.base')

@section('caption', 'Add empoloyees')

@section('title', 'Add empoloyees')

@section('lyric', 'lorem ipsum')

@section('content')
    @if(count($dataOfClients) == 0)
        <div class="alert alert-danger">
            <strong>Danger!</strong> There is no client in system. Please create one. <a
                    href="{{ URL::to('client/create') }}">Click here!</a>
        </div>
    @endif
    @if(session()->has('message_success'))
        <div class="alert alert-success">
            <strong>Well done!</strong> {{ session()->get('message_success') }}
        </div>
    @elseif(session()->has('message_danger'))
        <div class="alert alert-danger">
            <strong>Danger!</strong> {{ session()->get('message_danger') }}
        </div>
    @endif
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-6">
                            {{ Form::open(['route' => 'processStoreEmployee']) }}
                            <div class="form-group input-row">
                                {{ Form::label('full_name', 'Full name') }}
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil-square-o"></i></span>
                                    {{ Form::text('full_name', null, ['class' => 'form-control', 'placeholder' => App\Traits\Language::getMessage('messages.InputText')]) }}
                                </div>
                            </div>
                            <div class="form-group input-row">
                                {{ Form::label('father_name', 'Father name') }}
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil-square-o"></i></span>
                                    {{ Form::text('father_name', null, ['class' => 'form-control', 'placeholder' => App\Traits\Language::getMessage('messages.InputText')]) }}
                                </div>
                            </div>
                            <div class="form-group input-row">
                                {{ Form::label('emp_exp_type', 'Employee Type') }}
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil-square-o"></i></span>
                                    <select name="emp_exp_type" class = "form-control" required>
                                    <option value="">Select Option  </option>
                                    <option value="fresher">Fresher  </option>
                                    <option value="experience">Experience  </option>
                                </select>
                                </div>
                            </div>
                            <div class="form-group input-row">
                                {{ Form::label('emp_gender', 'Employee Gender') }}
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-pencil-square-o"></i></span>
                                    <select name="emp_gender" class = "form-control" required>
                                    <option value="">Select Option  </option>
                                    <option value="male">Male  </option>
                                    <option value="female">Female  </option>
                                </select>
                                </div>
                            </div>
                            <div class="form-group input-row">
                                {{ Form::label('Qualification', 'Qualification') }}
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-phone-square"></i></span>
                                    {{ Form::text('emp_qualification', null, ['class' => 'form-control', 'placeholder' => App\Traits\Language::getMessage('messages.InputText')]) }}
                                </div>
                            </div>
                            <div class="form-group input-row">
                                {{ Form::label('collage', 'College') }}
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-phone-square"></i></span>
                                    {{ Form::text('emp_collage', null, ['class' => 'form-control', 'placeholder' => App\Traits\Language::getMessage('messages.InputText')]) }}
                                </div>
                            </div>
                            <div class="form-group input-row">
                                {{ Form::label('percent', 'Percent') }}
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-phone-square"></i></span>
                                    {{ Form::number('emp_percent', null, ['class' => 'form-control', 'placeholder' => App\Traits\Language::getMessage('messages.InputText')]) }}
                                </div>
                            </div>
                            <div class="form-group input-row">
                                {{ Form::label('phone', 'Phone') }}
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-phone-square"></i></span>
                                    {{ Form::text('phone', null, ['class' => 'form-control', 'placeholder' => App\Traits\Language::getMessage('messages.InputText')]) }}
                                </div>
                            </div>

                            <div class="form-group input-row">
                                {{ Form::label('email', 'Email') }}
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-envelope-o"></i></span>
                                    {{ Form::text('email', null, ['class' => 'form-control', 'placeholder' => App\Traits\Language::getMessage('messages.InputText')]) }}
                                </div>
                            </div>

                            <div class="form-group input-row">
                                {{ Form::label('job', 'Job') }}
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-building"></i></span>
                                    {{ Form::text('job', null, ['class' => 'form-control', 'placeholder' => App\Traits\Language::getMessage('messages.InputText')]) }}
                                </div>
                            </div>
                        </div>

                        
                        <div class="col-lg-6">

                        <div class="form-group input-row">
                                {{ Form::label('country', 'Country') }}
                                <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-handshake-o"></i></span>
                                <select name="emp_country" class = "form-control" required>
                                    <option value="">Select Option  </option>
                                    <option value="india">India  </option>                                    
                                </select>
                            </div>
                        
                            <div class="form-group input-row">
                                {{ Form::label('state', 'State') }}
                                <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-handshake-o"></i></span>
                                <select name="emp_state" class = "form-control" required>
                                    <option value="">Select Option  </option>
                                   
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Puducherry">Puducherry</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Odisha">Odisha</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Telangana">Telangana</option>
<option value="Tripura">Tripura</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="Uttarakhand">Uttarakhand</option>
<option value="West Bengal">West Bengal</option>                                   
                                </select>
                            </div>
                       
                            <div class="form-group input-row">
                                {{ Form::label('District', 'District') }}
                                <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-handshake-o"></i></span>
                                <select name="emp_district" class = "form-control" required>
                                    <option value="">Select Option  </option>                                    
                    <option value="AHMEDABAD">Ahmedabad</option>
                    <option value="AMRELI">Amreli</option>
                    <option value="ANAND">Anand</option>
                    <option value="BANASKANTHA">Banaskantha</option>
                    <option value="BHARUCH">Bharuch</option>
                    <option value="BHAVNAGAR">Bhavnagar</option>
                    <option value="BOTAD">Botad</option>
                    <option value="CHHOTA-UDAIPUR">Chhota Udaipur</option>
                    <option value="DAHOD">Dahod</option>
                    <option value="GANDHINAGAR">Gandhinagar</option>
                    <option value="GIR-SOMNATH">Gir Somnath</option>
                    <option value="JAMNAGAR">Jamnagar</option>
                    <option value="JUNAGADH">Junagadh</option>
                    <option value="KHEDA">Kheda</option>
                    <option value="KUTCH">Kutch</option>
                    <option value="MAHISAGAR">Mahisagar</option>
                    <option value="MEHSANA">Mehsana</option>
                    <option value="MORBI">Morbi</option>
                    <option value="NAVSARI">Navsari</option>
                    <option value="PANCHMAHAL">Panchmahal</option>
                    <option value="PATAN">Patan</option>
                    <option value="PORBANDAR">Porbandar</option>
                    <option value="RAJKOT">Rajkot</option>
                    <option value="SABARKANTHA">Sabarkantha</option>
                    <option value="SURAT">Surat</option>
                    <option value="SURENDRANAGAR">Surendranagar</option>
                    <option value="UNA">Una</option>
                    <option value="VADODARA">Vadodara</option>
                    <option value="VALSAD">Valsad</option>                           
                                </select>
                            </div>

                            <div class="form-group input-row">
                                {{ Form::label('Country Zone', 'Country Zone') }}
                                <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-handshake-o"></i></span>
                                <select name="country_zone" class = "form-control">
                                    <option value="">Select Option  </option>
                                    @foreach ($CountryzoneModel as $Countryzone)
                                        <option value="{{$Countryzone->id}}">{{$Countryzone->name}} </option>
                                    @endforeach
                                </select>
                            </div>
                            </div>
                            <div class="form-group input-row">
                                {{ Form::label('State Zone', 'State Zone') }}
                                <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-handshake-o"></i></span>
                                <select name="state_zone" class = "form-control">
                        <option value="">Select Option  </option>
                        @foreach ($StatezoneModel as $Statezone)
                            <option value="{{$Statezone->id}}">{{$Statezone->name}} </option>
                        @endforeach
                    </select>
                            </div>
                            </div>
                            <div class="form-group input-row">
                                {{ Form::label('District Zone', 'District Zone') }}
                                <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-handshake-o"></i></span>
                                <select name="district_zone" class = "form-control">
                                    <option value="">Select Option  </option>
                                    @foreach ($DistrictzoneModel as $Districtzone)
                                        <option value="{{$Districtzone->id}}">{{$Districtzone->name}} </option>
                                    @endforeach
                                </select>
                            </div>
                            </div>
                            <div class="form-group input-row">
                                {{ Form::label('client_id', 'Assign client') }}
                                <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-handshake-o"></i></span>
                                {{ Form::select('client_id', $dataOfClients, null, ['class' => 'form-control', 'placeholder' => App\Traits\Language::getMessage('messages.InputText')])  }}
                            </div>
                            </div>
                            
                            <div class="form-group input-row">
                                {{ Form::label('address', 'Address') }}
                                {{ Form::textarea('address', null, ['class' => 'form-control', 'placeholder' => App\Traits\Language::getMessage('messages.InputText')]) }}
                            </div>

                            <div class="form-group input-row">
                                {{ Form::label('note', 'Note') }}
                                {{ Form::textarea('note', null, ['class' => 'form-control', 'placeholder' => App\Traits\Language::getMessage('messages.InputText')]) }}
                            </div>
                        </div>

                        <div class="col-lg-12 validate_form">
                            {{ Form::submit('Add employee', ['class' => 'btn btn-primary']) }}
                        </div>

                    {{ Form::close() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
        <script>
            $(document).ready(function () {
                //create formValidator object
                //there are a lot of configuration options that need to be passed,
                //but this makes it extremely flexibility and doesn't make any assumptions
                var validator = new formValidator({
                    //this function adds an error message to a form field
                    addError: function (field, message) {
                        //get existing error message field
                        var error_message_field = $('.error_message', field.parent('.input-group'));

                        //if the error message field doesn't exist yet, add it
                        if (!error_message_field.length) {
                            error_message_field = $('<span/>').addClass('error_message');
                            field.parent('.input-group').append(error_message_field);
                        }

                        error_message_field.text(message).show(200);
                        field.addClass('error');
                    },
                    //this removes an error from a form field
                    removeError: function (field) {
                        $('.error_message', field.parent('.input-group')).text('').hide();
                        field.removeClass('error');
                    },
                    //this is a final callback after failing to validate one or more fields
                    //it can be used to display a summary message, scroll to the first error, etc.
                    onErrors: function (errors, event) {
                        //errors is an array of objects, each containing a 'field' and 'message' parameter
                    },
                    //this defines the actual validation rules
                    rules: {
                        //this is a basic non-empty check
                        'full_name': {
                            'field': $('input[name=full_name]'),
                            'validate': function (field, event) {
                                if (!field.val()) {
                                    throw "A full name is required.";
                                }
                            }
                        },
                        'job': {
                            'field': $('input[name=job]'),
                            'validate': function (field, event) {
                                if (!field.val()) {
                                    throw "A job is required.";
                                }
                            }
                        },
                        'note': {
                            'field': $('textarea[name=note]'),
                            'validate': function (field, event) {
                                if (!field.val()) {
                                    throw "A note is required.";
                                }
                            }
                        },
                        'client_id': {
                            'field': $('select[name=client_id]'),
                            'validate': function (field, event) {
                                if (!field.val()) {
                                    throw "A client is required.";
                                }
                            }
                        },
                        'phone': {
                            'field': $('input[name=phone]'),
                            'validate': function (field, event) {
                                //if the validation is fired from a blur event,
                                //don't throw any errors if it is empty

                                if (!field.val()) {
                                    throw "A phone number is required."

                                }
                                ;

                                var phone_pattern = /[0-9]$/i;
                                if (!phone_pattern.test(field.val())) {
                                    throw "Please enter a valid phone number.";
                                }

                            }
                        },

                        'email': {
                            'field': $('input[name=email]'),
                            'validate': function (field, event) {
                                //if the validation is fired from a blur event,
                                //don't throw any errors if it is empty
                                if (event === 'blur' && !field.val()) field.addClass('success');

                                if (!field.val()) throw "A email is required.";

                                var email_pattern = /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
                                if (!email_pattern.test(field.val())) {
                                    throw "Please enter a valid email.";
                                }
                            }
                        }
                    }
                });

                //now, we attach events

                //this does validation every time a field loses focus
                $('form').on('blur', 'input,select', function () {
                    validator.validateField($(this).attr('name'), 'blur');
                });

                //this clears errors every time a field gains focus
                $('form').on('focus', 'input,select', function () {
                    validator.clearError($(this).attr('name'));
                });

                //this is for the validate links
                $('.validate_section').click(function () {
                    var fields = [];
                    $('input,select', $(this).closest('.section')).each(function () {
                        fields.push($(this).attr('name'));
                    });

                    if (validator.validateFields(fields, 'submit')) {
                        alert('success');
                    }
                    return false;
                });
                $('.validate_form').click(function () {
                    if (!validator.validateFields('submit')) {
                        return false;
                    }
                    return true;
                });

                //this is for the clear links
                $('.clear_section').click(function () {
                    var fields = [];
                    $('input,select', $(this).closest('.section')).each(function () {
                        fields.push($(this).attr('name'));
                    });

                    validator.clearErrors(fields);
                    return false;
                });
            });
        </script>
@endsection