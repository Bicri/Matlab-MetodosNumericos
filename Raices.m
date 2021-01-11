function varargout = Raices(varargin)
% RAICES MATLAB code for Raices.fig
%      RAICES, by itself, creates a new RAICES or raises the existing
%      singleton*.
%
%      H = RAICES returns the handle to a new RAICES or the handle to
%      the existing singleton*.
%
%      RAICES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RAICES.M with the given input arguments.
%
%      RAICES('Property','Value',...) creates a new RAICES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Raices_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Raices_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Raices

% Last Modified by GUIDE v2.5 10-Jan-2021 18:46:52

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Raices_OpeningFcn, ...
                   'gui_OutputFcn',  @Raices_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Raices is made visible.
function Raices_OpeningFcn(hObject, eventdata, handles, varargin)
screenSize = get(0,'ScreenSize');
posActual = get(gcf,'Position');
xr = screenSize(3)-posActual(3);
xp = round(xr/2);
yr = screenSize(4)-posActual(4);
yp = round(yr/2);
set(gcf,'Position',[xp yp posActual(3) posActual(4)]);
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Raices (see VARARGIN)

% Choose default command line output for Raices
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Raices wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Raices_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtNumero_Callback(hObject, eventdata, handles)
% hObject    handle to txtNumero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtNumero as text
%        str2double(get(hObject,'String')) returns contents of txtNumero as a double
obtener = get(hObject, 'String');
convertir = str2double(obtener);
handles.txtNumero=convertir;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function txtNumero_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtNumero (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnCalcular.
function btnCalcular_Callback(hObject, eventdata, handles)
% hObject    handle to btnCalcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
variable = handles.txtNumero;
%--- Comienza método
    real = sqrt(variable);
    tolerancia = handles.txtTol;
    i = 1;
    resultados(i,1) = i;
    resultados(i,2) = handles.txtAprox; %valor esperado
    resultados(i,3) = 0.5*((resultados(i,2)+variable)/resultados(i,2)); % aprox
    resultados(i,4) = abs( (real-resultados(i,3))/real );
    
    while(resultados(i,4) > tolerancia)
        i=i+1;
        resultados(i,1)=i;
        resultados(i,2) = resultados(i-1,3);
        resultados(i,3) = 0.5*(resultados(i,2)+variable/resultados(i,2));
        resultados(i,4) = abs( (real-resultados(i,3))/real );
        if(i>9)
            break;
        end
    end
 
    set(handles.tbldatos,'data',resultados);

% --- Executes on button press in btnAtras.
function btnAtras_Callback(hObject, eventdata, handles)
% hObject    handle to btnAtras (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear;close;
Primer_Parcial;



function txtAprox_Callback(hObject, eventdata, handles)
% hObject    handle to txtAprox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtAprox as text
%        str2double(get(hObject,'String')) returns contents of txtAprox as a double
obtener = get(hObject, 'String');
convertir = str2double(obtener);
handles.txtAprox=convertir;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function txtAprox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtAprox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtTol_Callback(hObject, eventdata, handles)
% hObject    handle to txtTol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtTol as text
%        str2double(get(hObject,'String')) returns contents of txtTol as a double
obtener = get(hObject, 'String');
convertir = str2double(obtener);
handles.txtTol=convertir;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function txtTol_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtTol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnLimpia.
function btnLimpia_Callback(hObject, eventdata, handles)
% hObject    handle to btnLimpia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num_elem(:,:)={''};
set(handles.tbldatos,'data',num_elem);

limpia='';

objetos = findobj(gcbf,'Tag','txtTol');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtAprox');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtNumero');
set(objetos,'String',limpia);


clear;
clear global;
