function varargout = AproximacionesS(varargin)
% APROXIMACIONESS MATLAB code for AproximacionesS.fig
%      APROXIMACIONESS, by itself, creates a new APROXIMACIONESS or raises the existing
%      singleton*.
%
%      H = APROXIMACIONESS returns the handle to a new APROXIMACIONESS or the handle to
%      the existing singleton*.
%
%      APROXIMACIONESS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in APROXIMACIONESS.M with the given input arguments.
%
%      APROXIMACIONESS('Property','Value',...) creates a new APROXIMACIONESS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AproximacionesS_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AproximacionesS_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AproximacionesS

% Last Modified by GUIDE v2.5 11-Jan-2021 22:46:37

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @AproximacionesS_OpeningFcn, ...
                   'gui_OutputFcn',  @AproximacionesS_OutputFcn, ...
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


% --- Executes just before AproximacionesS is made visible.
function AproximacionesS_OpeningFcn(hObject, eventdata, handles, varargin)
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
% varargin   command line arguments to AproximacionesS (see VARARGIN)

% Choose default command line output for AproximacionesS
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AproximacionesS wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = AproximacionesS_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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



function txtDom_Callback(hObject, eventdata, handles)
% hObject    handle to txtDom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtDom as text
%        str2double(get(hObject,'String')) returns contents of txtDom as a double


% --- Executes during object creation, after setting all properties.
function txtDom_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtDom (see GCBO)
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


% --- Executes on button press in btnAtras.
function btnAtras_Callback(hObject, eventdata, handles)
% hObject    handle to btnAtras (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear;close;
Primer_Parcial;

% --- Executes on button press in btnGrafica.
function btnGrafica_Callback(hObject, eventdata, handles)
% hObject    handle to btnGrafica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
x=[-10:1:10];
f=get(handles.txtPol,'String');
ezplot(handles.axes1,f,x);

% --- Executes on button press in btnLimpia.
function btnLimpia_Callback(hObject, eventdata, handles)
% hObject    handle to btnLimpia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
num_elem(:,:)={''};
set(handles.tblDatos,'data',num_elem);

limpia='';

objetos = findobj(gcbf,'Tag','txtTol');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtDom');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtAprox');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtPol');
set(objetos,'String',limpia);

cla;
cla reset;
clear;
clear global;

% --- Executes on button press in btnEjecuta.
function btnEjecuta_Callback(hObject, eventdata, handles)
% hObject    handle to btnEjecuta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
syms x;
i=1;
tolerancia = str2double(get(handles.txtTol,'String'));
f2 = get(handles.txtDom,'String');
matriz(i,1)=i;
matriz(i,2) = str2double(get(handles.txtAprox,'String'));
x = matriz(i,2);
matriz(i,3) = eval(f2);
matriz(i,4) = abs((matriz(i,2)-matriz(i,3))/matriz(i,3));

while(matriz(i,4)>tolerancia)
    i=i+1;
    matriz(i,1) = i;
    matriz(i,2) = matriz(i-1,3);
    x = matriz(i,2);
    matriz(i,3) = eval(f2);
    matriz(i,4) = abs((matriz(i,2)-matriz(i,3))/matriz(i,3));
    if(i==10)
        break;
    end
end

set(handles.tblDatos,'data',matriz);
