function varargout = Lagrange(varargin)
% LAGRANGE MATLAB code for Lagrange.fig
%      LAGRANGE, by itself, creates a new LAGRANGE or raises the existing
%      singleton*.
%
%      H = LAGRANGE returns the handle to a new LAGRANGE or the handle to
%      the existing singleton*.
%
%      LAGRANGE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LAGRANGE.M with the given input arguments.
%
%      LAGRANGE('Property','Value',...) creates a new LAGRANGE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Lagrange_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Lagrange_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Lagrange

% Last Modified by GUIDE v2.5 14-Jan-2021 14:19:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Lagrange_OpeningFcn, ...
                   'gui_OutputFcn',  @Lagrange_OutputFcn, ...
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


% --- Executes just before Lagrange is made visible.
function Lagrange_OpeningFcn(hObject, eventdata, handles, varargin)
screenSize = get(0,'ScreenSize');
posActual = get(gcf,'Position');
xr = screenSize(3)-posActual(3);
xp = round(xr/2);
yr = screenSize(4)-posActual(4);
yp = round(yr/2);
set(gcf,'Position',[xp yp posActual(3) posActual(4)]);

set(handles.lblEcu,'Visible','off');
set(handles.lblValor,'Visible','off');
set(handles.txtEcu,'Visible','off');
set(handles.txtResp,'Visible','off');
set(handles.axes1,'Visible','off');
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Lagrange (see VARARGIN)

% Choose default command line output for Lagrange
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Lagrange wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Lagrange_OutputFcn(hObject, eventdata, handles) 
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
Segundo_Parcial;


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


% --- Executes on button press in btnEjecutar.
function btnEjecutar_Callback(hObject, eventdata, handles)
% hObject    handle to btnEjecutar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla;
independiente = str2num(get(handles.txtInd,'String'));
dependiente = str2num(get(handles.txtDep,'String'));
valorInt = str2double(get(handles.txtInter,'String'));

ecuacion = MetodoLagrange(independiente,dependiente);
syms t;
t = valorInt;
RespInter = eval(ecuacion);

%Visibilidad
set(handles.lblEcu,'Visible','on');
set(handles.lblValor,'Visible','on');
set(handles.txtEcu,'Visible','on');
set(handles.txtResp,'Visible','on');
set(handles.axes1,'Visible','on');

%Respuestas

%Respuestas en caja de texto
set(handles.txtEcu,'String',char(ecuacion));
set(handles.txtResp,'String',RespInter);

% Inicio Grafica

tam = size(independiente);
inferior = independiente(1,1);
superior = independiente(1,tam(2));

aux=[(inferior-2):((inferior+superior)/2):(superior+2)];

axes(handles.axes1);

f = get(handles.txtEcu,'String');
ezplot(handles.axes1,f,aux);

grid on;
hold on;

plot(handles.axes1,independiente,dependiente,'*');

hold on;

plot(handles.axes1,valorInt,RespInter,'b--o');

% --- Executes on button press in btnLimpiar.
function btnLimpiar_Callback(hObject, eventdata, handles)
% hObject    handle to btnLimpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if(isnan(str2double(get(handles.txtInter,'String'))))
else
    cla;
end

limpia='';

objetos = findobj(gcbf,'Tag','txtInter');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtResp');
set(objetos,'String',limpia);

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



function txtResp_Callback(hObject, eventdata, handles)
% hObject    handle to txtResp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtResp as text
%        str2double(get(hObject,'String')) returns contents of txtResp as a double


% --- Executes during object creation, after setting all properties.
function txtResp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtResp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnAll.
function btnAll_Callback(hObject, eventdata, handles)
% hObject    handle to btnAll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla reset;

limpia='';

objetos = findobj(gcbf,'Tag','txtInter');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtResp');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtEcu');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtDep');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtInd');
set(objetos,'String',limpia);


set(handles.lblEcu,'Visible','off');
set(handles.lblValor,'Visible','off');
set(handles.txtEcu,'Visible','off');
set(handles.txtResp,'Visible','off');
set(handles.axes1,'Visible','off');

clear;
clear global;
