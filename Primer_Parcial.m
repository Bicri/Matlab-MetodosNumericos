function varargout = Primer_Parcial(varargin)
% PRIMER_PARCIAL MATLAB code for Primer_Parcial.fig
%      PRIMER_PARCIAL, by itself, creates a new PRIMER_PARCIAL or raises the existing
%      singleton*.
%
%      H = PRIMER_PARCIAL returns the handle to a new PRIMER_PARCIAL or the handle to
%      the existing singleton*.
%
%      PRIMER_PARCIAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRIMER_PARCIAL.M with the given input arguments.
%
%      PRIMER_PARCIAL('Property','Value',...) creates a new PRIMER_PARCIAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Primer_Parcial_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Primer_Parcial_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Primer_Parcial

% Last Modified by GUIDE v2.5 07-Jan-2021 17:19:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Primer_Parcial_OpeningFcn, ...
                   'gui_OutputFcn',  @Primer_Parcial_OutputFcn, ...
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


% --- Executes just before Primer_Parcial is made visible.
function Primer_Parcial_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Primer_Parcial (see VARARGIN)

% Choose default command line output for Primer_Parcial
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Primer_Parcial wait for user response (see UIRESUME)
% uiwait(handles.PrimerParcial);


% --- Outputs from this function are returned to the command line.
function varargout = Primer_Parcial_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
