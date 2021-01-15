function varargout = Cuadratura_Gaussiana_Tabular(varargin)
% CUADRATURA_GAUSSIANA_TABULAR MATLAB code for Cuadratura_Gaussiana_Tabular.fig
%      CUADRATURA_GAUSSIANA_TABULAR, by itself, creates a new CUADRATURA_GAUSSIANA_TABULAR or raises the existing
%      singleton*.
%
%      H = CUADRATURA_GAUSSIANA_TABULAR returns the handle to a new CUADRATURA_GAUSSIANA_TABULAR or the handle to
%      the existing singleton*.
%
%      CUADRATURA_GAUSSIANA_TABULAR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CUADRATURA_GAUSSIANA_TABULAR.M with the given input arguments.
%
%      CUADRATURA_GAUSSIANA_TABULAR('Property','Value',...) creates a new CUADRATURA_GAUSSIANA_TABULAR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Cuadratura_Gaussiana_Tabular_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Cuadratura_Gaussiana_Tabular_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Cuadratura_Gaussiana_Tabular

% Last Modified by GUIDE v2.5 15-Jan-2021 11:30:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Cuadratura_Gaussiana_Tabular_OpeningFcn, ...
                   'gui_OutputFcn',  @Cuadratura_Gaussiana_Tabular_OutputFcn, ...
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


% --- Executes just before Cuadratura_Gaussiana_Tabular is made visible.
function Cuadratura_Gaussiana_Tabular_OpeningFcn(hObject, eventdata, handles, varargin)
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

set(handles.txtEcu,'Visible','off');
set(handles.lblEcu,'Visible','off');

% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Cuadratura_Gaussiana_Tabular (see VARARGIN)

% Choose default command line output for Cuadratura_Gaussiana_Tabular
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Cuadratura_Gaussiana_Tabular wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Cuadratura_Gaussiana_Tabular_OutputFcn(hObject, eventdata, handles) 
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


function txtInd_Callback(hObject, eventdata, handles)
% hObject    handle to txtInd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtInd as text
%        str2double(get(hObject,'String')) returns contents of txtInd as a double


% --- Executes during object creation, after setting all properties.
function txtInd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtInd (see GCBO)
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

objetos = findobj(gcbf,'Tag','txtInd');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtDep');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtSup');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtInf');
set(objetos,'String',limpia);


cla reset;

set(handles.txtArea,'Visible','off');
set(handles.lblArea,'Visible','off');
set(handles.axes1,'Visible','off');
set(handles.txtEcu,'Visible','off');
set(handles.lblEcu,'Visible','off');


clear;
clear global;

% --- Executes on button press in btnEjecuta.
function btnEjecuta_Callback(hObject, eventdata, handles)
% hObject    handle to btnEjecuta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

independiente = str2num(get(handles.txtInd,'String'));
dependiente = str2num(get(handles.txtDep,'String'));
b = str2double(get(handles.txtSup,'String'));    %Limite superior
a = str2double(get(handles.txtInf,'String'));  %Limite inferior
d = (get(handles.cmbOrden,'Value'));

inf = a; sup=b;

fx = MetodoLagrange(independiente,dependiente);
syms t;
syms x;
newfx = subs(fx,t,x);
if(d==1)
    n = 2;
else
    n = 3;
end

Resp = MetodoCuadraturaG(char(newfx),a,b,n);

set(handles.txtArea,'Visible','on');
set(handles.lblArea,'Visible','on');
set(handles.axes1,'Visible','on');
set(handles.txtEcu,'Visible','on');
set(handles.lblEcu,'Visible','on');

set(handles.txtEcu,'String',char(newfx));
set(handles.txtArea,'String',Resp);

axes(handles.axes1);

aux=[inf:0.1:(round(sup))];
ezplot(handles.axes1,char(newfx),aux);

grid on;

hold on;

plot(handles.axes1,independiente,dependiente,'r o');

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


% --- Executes on selection change in cmbOrden.
function cmbOrden_Callback(hObject, eventdata, handles)
% hObject    handle to cmbOrden (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns cmbOrden contents as cell array
%        contents{get(hObject,'Value')} returns selected item from cmbOrden


% --- Executes during object creation, after setting all properties.
function cmbOrden_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cmbOrden (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtDep_Callback(hObject, eventdata, handles)
% hObject    handle to txtDep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtDep as text
%        str2double(get(hObject,'String')) returns contents of txtDep as a double


% --- Executes during object creation, after setting all properties.
function txtDep_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtDep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtEcu_Callback(hObject, eventdata, handles)
% hObject    handle to txtEcu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtEcu as text
%        str2double(get(hObject,'String')) returns contents of txtEcu as a double


% --- Executes during object creation, after setting all properties.
function txtEcu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtEcu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
