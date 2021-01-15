function varargout = Simpson_Un_Tercio(varargin)
% SIMPSON_UN_TERCIO MATLAB code for Simpson_Un_Tercio.fig
%      SIMPSON_UN_TERCIO, by itself, creates a new SIMPSON_UN_TERCIO or raises the existing
%      singleton*.
%
%      H = SIMPSON_UN_TERCIO returns the handle to a new SIMPSON_UN_TERCIO or the handle to
%      the existing singleton*.
%
%      SIMPSON_UN_TERCIO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIMPSON_UN_TERCIO.M with the given input arguments.
%
%      SIMPSON_UN_TERCIO('Property','Value',...) creates a new SIMPSON_UN_TERCIO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Simpson_Un_Tercio_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Simpson_Un_Tercio_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Simpson_Un_Tercio

% Last Modified by GUIDE v2.5 14-Jan-2021 20:00:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Simpson_Un_Tercio_OpeningFcn, ...
                   'gui_OutputFcn',  @Simpson_Un_Tercio_OutputFcn, ...
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


% --- Executes just before Simpson_Un_Tercio is made visible.
function Simpson_Un_Tercio_OpeningFcn(hObject, eventdata, handles, varargin)
screenSize = get(0,'ScreenSize');
posActual = get(gcf,'Position');
xr = screenSize(3)-posActual(3);
xp = round(xr/2);
yr = screenSize(4)-posActual(4);
yp = round(yr/2);
set(gcf,'Position',[xp yp posActual(3) posActual(4)]);


set(handles.txtArea,'Visible','off');
set(handles.lblArea,'Visible','off');
set(handles.axes1,'Visible','off');
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Simpson_Un_Tercio (see VARARGIN)

% Choose default command line output for Simpson_Un_Tercio
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Simpson_Un_Tercio wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Simpson_Un_Tercio_OutputFcn(hObject, eventdata, handles) 
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
Tercer_Parcial;


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



function txtSup_Callback(hObject, eventdata, handles)
% hObject    handle to txtSup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtSup as text
%        str2double(get(hObject,'String')) returns contents of txtSup as a double


% --- Executes during object creation, after setting all properties.
function txtSup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtSup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtInf_Callback(hObject, eventdata, handles)
% hObject    handle to txtInf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtInf as text
%        str2double(get(hObject,'String')) returns contents of txtInf as a double


% --- Executes during object creation, after setting all properties.
function txtInf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtInf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtInter_Callback(hObject, eventdata, handles)
% hObject    handle to txtInter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtInter as text
%        str2double(get(hObject,'String')) returns contents of txtInter as a double


% --- Executes during object creation, after setting all properties.
function txtInter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtInter (see GCBO)
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

limpia='';

objetos = findobj(gcbf,'Tag','txtPol');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtSup');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtInf');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtInter');
set(objetos,'String',limpia);

cla reset;

set(handles.txtArea,'Visible','off');
set(handles.lblArea,'Visible','off');
set(handles.axes1,'Visible','off');

clear;
clear global;

% --- Executes on button press in btnEjecuta.
function btnEjecuta_Callback(hObject, eventdata, handles)
% hObject    handle to btnEjecuta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txtArea,'Visible','on');
set(handles.lblArea,'Visible','on');
set(handles.axes1,'Visible','on');

cla reset;

g=get(handles.txtPol,'String');
b = str2double(get(handles.txtSup,'String'));    %Limite superior
a = str2double(get(handles.txtInf,'String'));  %Limite inferior
k = str2double(get(handles.txtInter,'String'));  %Intervalos

inf = a; sup=b;

f=inline(g);

n=2*k;
S=0;
h=(b-a)/n;

for i=1:k
    S=S+(h/3)*(f(a)+4*f(a+h)+f(a+2*h));
    a=a+2*h;
end

set(handles.txtArea,'String',S);
x=[inf:((inf+sup)/2):round(sup)];
ezplot(handles.axes1,g,x);




function txtArea_Callback(hObject, eventdata, handles)
% hObject    handle to txtArea (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtArea as text
%        str2double(get(hObject,'String')) returns contents of txtArea as a double


% --- Executes during object creation, after setting all properties.
function txtArea_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtArea (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
