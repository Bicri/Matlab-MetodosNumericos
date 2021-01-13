function varargout = Interpolacion_Simple(varargin)
% INTERPOLACION_SIMPLE MATLAB code for Interpolacion_Simple.fig
%      INTERPOLACION_SIMPLE, by itself, creates a new INTERPOLACION_SIMPLE or raises the existing
%      singleton*.
%
%      H = INTERPOLACION_SIMPLE returns the handle to a new INTERPOLACION_SIMPLE or the handle to
%      the existing singleton*.
%
%      INTERPOLACION_SIMPLE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERPOLACION_SIMPLE.M with the given input arguments.
%
%      INTERPOLACION_SIMPLE('Property','Value',...) creates a new INTERPOLACION_SIMPLE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Interpolacion_Simple_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Interpolacion_Simple_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Interpolacion_Simple

% Last Modified by GUIDE v2.5 13-Jan-2021 09:54:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Interpolacion_Simple_OpeningFcn, ...
                   'gui_OutputFcn',  @Interpolacion_Simple_OutputFcn, ...
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


% --- Executes just before Interpolacion_Simple is made visible.
function Interpolacion_Simple_OpeningFcn(hObject, eventdata, handles, varargin)
screenSize = get(0,'ScreenSize');
posActual = get(gcf,'Position');
xr = screenSize(3)-posActual(3);
xp = round(xr/2);
yr = screenSize(4)-posActual(4);
yp = round(yr/2);
set(gcf,'Position',[xp yp posActual(3) posActual(4)]);
set(handles.lblEcu,'Visible','off');
set(handles.lblResult,'Visible','off');
set(handles.txtEcu,'Visible','off');
set(handles.txtResult,'Visible','off');
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Interpolacion_Simple (see VARARGIN)

% Choose default command line output for Interpolacion_Simple
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Interpolacion_Simple wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Interpolacion_Simple_OutputFcn(hObject, eventdata, handles) 
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
clear all;
clear global;
close;
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



function txtGrado_Callback(hObject, eventdata, handles)
% hObject    handle to txtGrado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtGrado as text
%        str2double(get(hObject,'String')) returns contents of txtGrado as a double


% --- Executes during object creation, after setting all properties.
function txtGrado_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtGrado (see GCBO)
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


% --- Executes on button press in btnGrafica.
function btnGrafica_Callback(hObject, eventdata, handles)
% hObject    handle to btnGrafica (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
independe = str2num(get(handles.txtInd,'String'));
depende = str2num(get(handles.txtDep,'String'));
plot(handles.axes1,independe,depende);


% --- Executes on button press in btnLimpiar.
function btnLimpiar_Callback(hObject, eventdata, handles)
% hObject    handle to btnLimpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
limpia='';

objetos = findobj(gcbf,'Tag','txtInd');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtDep');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtGrado');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtInter');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtEcu');
set(objetos,'String',limpia);

objetos = findobj(gcbf,'Tag','txtResult');
set(objetos,'String',limpia);

set(handles.lblEcu,'Visible','off');
set(handles.lblResult,'Visible','off');
set(handles.txtEcu,'Visible','off');
set(handles.txtResult,'Visible','off');

cla;
cla reset;
clear;
clear global;

% --- Executes on button press in btnEjecutar.
function btnEjecutar_Callback(hObject, eventdata, handles)
% hObject    handle to btnEjecutar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
independiente = str2num(get(handles.txtInd,'String'));
dependiente = str2num(get(handles.txtDep,'String'));
grado = str2double(get(handles.txtGrado,'String'));
ValInter = str2double(get(handles.txtInter,'String'));
i=1;j=1;ecuacion=0;
a = polyfit(independiente,dependiente,grado);
tamA = size(a);

%Crea la ecuacion
syms t;
for i=grado:-1:0
    if(i==0)
        ecuacion=ecuacion+(a(1,j));
    else
        ecuacion = ecuacion + (a(1,j)*t.^i);
    end
    j=j+1;
end

t = ValInter;
resultado = eval(ecuacion);


set(handles.lblEcu,'Visible','on');
set(handles.lblResult,'Visible','on');
set(handles.txtEcu,'Visible','on');
set(handles.txtResult,'Visible','on');

set(handles.txtEcu,'String',char(ecuacion));
set(handles.txtResult,'String',resultado);



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



function txtResult_Callback(hObject, eventdata, handles)
% hObject    handle to txtResult (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtResult as text
%        str2double(get(hObject,'String')) returns contents of txtResult as a double


% --- Executes during object creation, after setting all properties.
function txtResult_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtResult (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
