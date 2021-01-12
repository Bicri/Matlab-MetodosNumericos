function varargout = Newton_Raphson(varargin)
% NEWTON_RAPHSON MATLAB code for Newton_Raphson.fig
%      NEWTON_RAPHSON, by itself, creates a new NEWTON_RAPHSON or raises the existing
%      singleton*.
%
%      H = NEWTON_RAPHSON returns the handle to a new NEWTON_RAPHSON or the handle to
%      the existing singleton*.
%
%      NEWTON_RAPHSON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEWTON_RAPHSON.M with the given input arguments.
%
%      NEWTON_RAPHSON('Property','Value',...) creates a new NEWTON_RAPHSON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Newton_Raphson_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Newton_Raphson_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Newton_Raphson

% Last Modified by GUIDE v2.5 12-Jan-2021 16:51:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Newton_Raphson_OpeningFcn, ...
                   'gui_OutputFcn',  @Newton_Raphson_OutputFcn, ...
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


% --- Executes just before Newton_Raphson is made visible.
function Newton_Raphson_OpeningFcn(hObject, eventdata, handles, varargin)
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
% varargin   command line arguments to Newton_Raphson (see VARARGIN)

% Choose default command line output for Newton_Raphson
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Newton_Raphson wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Newton_Raphson_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in btnAtras.
function btnAtras_Callback(hObject, eventdata, handles)
% hObject    handle to btnAtras (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear;close;
Primer_Parcial;


function txtPol_Callback(hObject, eventdata, handles)
% hObject    handle to txtPol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtPol as text
%        str2double(get(hObject,'String')) returns contents of txtPol as a double


% --- Executes during object creation, after setting all properties.
function txtPol_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtPol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtAprox_Callback(hObject, eventdata, handles)
% hObject    handle to txtAprox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtAprox as text
%        str2double(get(hObject,'String')) returns contents of txtAprox as a double


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


% --- Executes on button press in btnGraficar.
function btnGraficar_Callback(hObject, eventdata, handles)
% hObject    handle to btnGraficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
y=[-10:1:10];
f=get(handles.txtPol,'String');
ezplot(handles.axes1,f,y);


% --- Executes on button press in btnOtro.
function btnOtro_Callback(hObject, eventdata, handles)
% hObject    handle to btnOtro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

num_elem(:,:)={''};
set(handles.tblDatos,'data',num_elem);

limpia='';

objetos = findobj(gcbf,'Tag','txtTol');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtAprox');
set(objetos,'String',limpia);


% --- Executes on button press in btnEjecutar.
function btnEjecutar_Callback(hObject, eventdata, handles)
% hObject    handle to btnEjecutar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
syms x;
f2 = get(handles.txtPol,'String');
df = diff(str2sym(f2));
i=1;
error = 10;
tolerancia = str2double(get(handles.txtTol,'String'));
matriz(i,1)=1;

while(error>tolerancia)
    matriz(i,1) = i;
    if(i==1)
        matriz(i,2) = str2double(get(handles.txtAprox,'String'));
    else
        matriz(i,2) = matriz(i-1,6);
    end
    x = matriz(i,2);
    matriz(i,3) = eval(f2);
    matriz(i,4) = eval(df);
    matriz(i,5) = matriz(i,3)/matriz(i,4);
    matriz(i,6) = matriz(i,2) - matriz(i,5);
    matriz(i,7) = abs( (matriz(i,2)-matriz(i,6))/matriz(i,6) );
    error = matriz(i,7);
    i=i+1;
    if(i>10)
        break;
    end
end
set(handles.tblDatos,'data',matriz);

% --- Executes on button press in btnClearAll.
function btnClearAll_Callback(hObject, eventdata, handles)
% hObject    handle to btnClearAll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num_elem(:,:)={''};
set(handles.tblDatos,'data',num_elem);

limpia='';

objetos = findobj(gcbf,'Tag','txtTol');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtPol');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtAprox');
set(objetos,'String',limpia);


cla;
cla reset;
clear;
clear global;
