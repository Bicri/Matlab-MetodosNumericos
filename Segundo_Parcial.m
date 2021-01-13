function varargout = Segundo_Parcial(varargin)
% SEGUNDO_PARCIAL MATLAB code for Segundo_Parcial.fig
%      SEGUNDO_PARCIAL, by itself, creates a new SEGUNDO_PARCIAL or raises the existing
%      singleton*.
%
%      H = SEGUNDO_PARCIAL returns the handle to a new SEGUNDO_PARCIAL or the handle to
%      the existing singleton*.
%
%      SEGUNDO_PARCIAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SEGUNDO_PARCIAL.M with the given input arguments.
%
%      SEGUNDO_PARCIAL('Property','Value',...) creates a new SEGUNDO_PARCIAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Segundo_Parcial_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Segundo_Parcial_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Segundo_Parcial

% Last Modified by GUIDE v2.5 12-Jan-2021 12:54:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Segundo_Parcial_OpeningFcn, ...
                   'gui_OutputFcn',  @Segundo_Parcial_OutputFcn, ...
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


% --- Executes just before Segundo_Parcial is made visible.
function Segundo_Parcial_OpeningFcn(hObject, eventdata, handles, varargin)
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
% varargin   command line arguments to Segundo_Parcial (see VARARGIN)

% Choose default command line output for Segundo_Parcial
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Segundo_Parcial wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Segundo_Parcial_OutputFcn(hObject, eventdata, handles) 
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
close;
Inicio;

% --- Executes on button press in btnNewtonR.
function btnNewtonR_Callback(hObject, eventdata, handles)
% hObject    handle to btnNewtonR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear;close;
Newton_Raphson;

% --- Executes on button press in btnJacobi.
function btnJacobi_Callback(hObject, eventdata, handles)
% hObject    handle to btnJacobi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear;close;
Jacobi;

% --- Executes on button press in btnSeidel.
function btnSeidel_Callback(hObject, eventdata, handles)
% hObject    handle to btnSeidel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear;close;
Gauss_Seidel;

% --- Executes on button press in btnInterSimple.
function btnInterSimple_Callback(hObject, eventdata, handles)
% hObject    handle to btnInterSimple (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear;close;
Interpolacion_Simple;

% --- Executes on button press in btnLagrange.
function btnLagrange_Callback(hObject, eventdata, handles)
% hObject    handle to btnLagrange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
