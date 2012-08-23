type
  THTMLViewFrame=class(TViewFrame)
  private
   FStatus             :TStatus;
   FWMSetFocusUpdate   :Boolean;
   FActiveHTMLFrame    :THTMLBaseFrameWindow;
   FFoundASPTag        :Boolean;
   FWebBrowserOwner    :Pointer;
   FModuleModified     :Boolean;
   FSelectAllControls  :TMenuItem;
   FTagEditorClosedByUser:Boolean;
   FBeforeSave         :TViewFrameNotifyEvent;
   FAfterSave          :TViewFrameNotifyEvent;
   FActive             :Boolean;
   FDesignerType       :string;
   FInitialDisplay     :Boolean;
   FMergedMenuItems    :TList;
   FMainMenu           :TMainMenu;
   FImageList          :TCustomImageList;
   FOnDesignerCommand  :TViewFrameCommandEvent;
   FOnCommandChecked   :TViewFrameIsCommandEvent;
   FOnCommandEnabled   :TViewFrameIsCommandEvent;
   FOnCommandVisible   :TViewFrameIsCommandEvent;
   FOnModified         :TViewFrameNotifyEvent;
   FOnDestroyed        :TViewFrameNotifyEvent;
   FCaption            :string;
   FOnDisplay          :TViewFrameContextEventEx;
   FSearchEvents       :TSearchEventHandler;
   FOnAlign            :TViewFrameAlignEvent;
   FOnSize             :TViewFrameSizeEvent;
   FOnHandles          :TViewFrameContextEvent;
   FOnHide             :TViewFrameContextEventEx;
   FOnViewClosed       :TViewFrameContextEventEx;
   FAutoMergeMenus     :Boolean;
   FAutoMergeImages    :Boolean;
   FAutoMergeActions   :Boolean;
   FOnEditAction       :TViewFrameEditActionEvent;
   FOnSearchAgain      :TNotifyEvent;
   FOnSearchReplace    :TNotifyEvent;
   FOnSearchFind       :TNotifyEvent;
   FOnInitialDisplay   :TViewFrameContextEventEx;
   FOnSearchValidCommands:TViewFrameSearchCommandsEvent;
   FOnSearchIncremental:TNotifyEvent;
   FOnSearchGotoLine   :TNotifyEvent;
   FOnEditValidCommands:TViewFrameGetEditStateEvent;
   FHideMergedMenus    :Boolean;
   FActionList         :TCustomActionList;
   FIDEToolbars        :TList;
   FNotifierIndex      :Integer;
   FToolbars           ::TCustomViewFrame.:1;
   FToolbarResetStreams:TObjectList;
   FControlBar         :TControlBar;
   FControlBarMenu     :TPopupActionBar;
   FCommands           :TIDEToolbarForm;
   FControlBarPositions::TCustomViewFrame.:2;
   FOnAlignAffectState :TViewFrameAlignableStateEvent;
   FOnGetActive        :TViewFrameGetActiveEvent;
   FOnSizeAffectState  :TViewFrameSizeAffectEvent;
   FOnDesignerType     :TViewFrameDesignerTypeEvent;
   FViewClosed         :Boolean;
   FAutoRangeCount     :Integer;
   FAutoScroll         :Boolean;
   FHorzScrollBar      :TControlScrollBar;
   FPanPoint           :TPoint;
   FUpdatingScrollBars :Boolean;
   FVertScrollBar      :TControlScrollBar;
   FAlignControlList   :TList;
   FAlignLevel         :Word;
   FBevelEdges         :TBevelEdges;
   FBevelInner         :TBevelCut;
   FBevelOuter         :TBevelCut;
   FBevelKind          :TBevelKind;
   FBevelWidth         :TBevelWidth;
   FBorderWidth        :TBorderWidth;
   FPadding            :TPadding;
   FBrush              :TBrush;
   FDockClients        :TList;
   FDockManager        :IDockManager;
   FImeMode            :TImeMode;
   FImeName            :TImeName;
   FParentWindow       :HWND;
   FTabList            :TList;
   FControls           :TList;
   FWinControls        :TList;
   FTabOrder           :Integer;
   FTabStop            :Boolean;
   FCtl3D              :Boolean;
   FShowing            :Boolean;
   FUseDockManager     :Boolean;
   FDockSite           :Boolean;
   FParentCtl3D        :Boolean;
   FParentDoubleBuffered:Boolean;
   FPerformingShowingChanged:Boolean;
   FOnDockDrop         :TDockDropEvent;
   FOnDockOver         :TDockOverEvent;
   FOnEnter            :TNotifyEvent;
   FOnExit             :TNotifyEvent;
   FOnGetSiteInfo      :TGetSiteInfoEvent;
   FOnKeyDown          :TKeyEvent;
   FOnKeyPress         :TKeyPressEvent;
   FOnKeyUp            :TKeyEvent;
   FOnUnDock           :TUnDockEvent;
   FOnAlignInsertBefore:TAlignInsertBeforeEvent;
   FOnAlignPosition    :TAlignPositionEvent;
   FMouseInClient      :Boolean;
   FMouseControl       :TControl;
   FTouchControl       :TControl;
   FDefWndProc         :Pointer;
   FHandle             :HWND;
   FObjectInstance     :Pointer;
   FParent             :TWinControl;
   FWindowProc         :TWndMethod;
   FLeft               :Integer;
   FTop                :Integer;
   FWidth              :Integer;
   FHeight             :Integer;
   FControlStyle       :TControlStyle;
   FControlState       :TControlState;
   FDesktopFont        :Boolean;
   FVisible            :Boolean;
   FEnabled            :Boolean;
   FParentFont         :Boolean;
   FParentColor        :Boolean;
   FAlign              :TAlign;
   FAutoSize           :Boolean;
   FDragMode           :TDragMode;
   FIsControl          :Boolean;
   FBiDiMode           :TBiDiMode;
   FParentBiDiMode     :Boolean;
   FAnchors            :TAnchors;
   FFont               :TFont;
   FActionLink         :TControlActionLink;
   FColor              :TColor;
   FConstraints        :TSizeConstraints;
   FMargins            :TMargins;
   FCursor             :TCursor;
   FDragCursor         :TCursor;
   FPopupMenu          :TPopupMenu;
   FHint               :string;
   FFontHeight         :Integer;
   FScalingFlags       :TScalingFlags;
   FShowHint           :Boolean;
   FParentShowHint     :Boolean;
   FDragKind           :TDragKind;
   FDockOrientation    :TDockOrientation;
   FHostDockSite       :TWinControl;
   FWheelAccumulator   :Integer;
   FUndockWidth        :Integer;
   FUndockHeight       :Integer;
   FLRDockWidth        :Integer;
   FTBDockHeight       :Integer;
   FFloatingDockSiteClass:TWinControlClass;
   FTouchManager       :TTouchManager;
   FOnCanResize        :TCanResizeEvent;
   FOnConstrainedResize:TConstrainedResizeEvent;
   FOnMouseDown        :TMouseEvent;
   FOnMouseMove        :TMouseMoveEvent;
   FOnMouseUp          :TMouseEvent;
   FOnDragDrop         :TDragDropEvent;
   FOnDragOver         :TDragOverEvent;
   FOnResize           :TNotifyEvent;
   FOnStartDock        :TStartDockEvent;
   FOnEndDock          :TEndDragEvent;
   FOnStartDrag        :TStartDragEvent;
   FOnEndDrag          :TEndDragEvent;
   FOnClick            :TNotifyEvent;
   FOnDblClick         :TNotifyEvent;
   FOnContextPopup     :TContextPopupEvent;
   FOnMouseActivate    :TMouseActivateEvent;
   FOnMouseLeave       :TNotifyEvent;
   FOnMouseEnter       :TNotifyEvent;
   FOnMouseWheel       :TMouseWheelEvent;
   FOnMouseWheelDown   :TMouseWheelUpDownEvent;
   FOnMouseWheelUp     :TMouseWheelUpDownEvent;
   FOnGesture          :TGestureEvent;
   FHelpType           :THelpType;
   FHelpKeyword        :string;
   FHelpContext        :THelpContext;
   FCustomHint         :TCustomHint;
   FParentCustomHint   :Boolean;
   FText               :PWideChar;
   FOwner              :TComponent;
   FName               :TComponentName;
   FTag                :NativeInt;
   FComponents         :TList;
   FFreeNotifies       :TList;
   FDesignInfo         :Integer;
   FComponentState     :TComponentState;
   FVCLComObject       :Pointer;
   FObservers          :TObservers;
   FSortedComponents   :TList;
   function GetIDEToolbar(const Index: Integer): TToolBar;
   function GetDockClients(Index: Integer): TControl;
   function GetControl(Index: Integer): TControl;
   function GetComponent(AIndex: Integer): TComponent;
  protected
   FDoubleBuffered     :Boolean;
   FInImeComposition   :Boolean;
   FDesignSize         :TPoint;
   FAnchorMove         :Boolean;
   FAnchorRules        :TPoint;
   FAnchorOrigin       :TPoint;
   FOriginalParentSize :TPoint;
   FExplicitLeft       :Integer;
   FExplicitTop        :Integer;
   FExplicitWidth      :Integer;
   FExplicitHeight     :Integer;
   FReserved           :Pointer;
   FComponentStyle     :TComponentStyle;
  public
   constructor Create(AOwner: TComponent);
   class destructor Destroy;
   procedure AddLocalMenuAction(Action: TBasicAction);
   procedure ViewTagEditor;
   function CanViewTagEditor: Boolean;
   procedure ShowTray(AVisible: Boolean);
   procedure SaveTagEditor;
   procedure UpdateAllowTagEditing;
   constructor Create(AOwner: TComponent);
   class destructor Destroy;
   procedure AddToolbarToIDE(AToolbar: TToolBar);
   constructor Create(AOwner: TComponent);
   procedure GetChildren(Proc: TGetChildProc = procedure(Child: TComponent) of object; Root: TComponent);
   constructor Create(AOwner: TComponent);
   class destructor Destroy;
   procedure DisableAutoRange;
   procedure EnableAutoRange;
   procedure ScrollInView(AControl: TControl);
   constructor Create(AOwner: TComponent);
   constructor CreateParented(ParentWindow: HWND);
   class function CreateParentedControl(ParentWindow: HWND): TWinControl;
   class destructor Destroy;
   procedure Broadcast(var Message);
   function CanFocus: Boolean;
   function ContainsControl(Control: TControl): Boolean;
   function ControlAtPos(const Pos: TPoint; AllowDisabled: Boolean; AllowWinControls: Boolean; AllLevels: Boolean): TControl;
   procedure DefaultHandler(var Message);
   procedure DisableAlign;
   procedure DockDrop(Source: TDragDockObject; X: Integer; Y: Integer);
   procedure EnableAlign;
   function FindChildControl(const ControlName: string): TControl;
   procedure FlipChildren(AllLevels: Boolean);
   function Focused: Boolean;
   procedure GetChildren(Proc: TGetChildProc = procedure(Child: TComponent) of object; Root: TComponent);
   procedure GetTabControlList(List: TList);
   procedure GetTabOrderList(List: TList);
   function HandleAllocated: Boolean;
   procedure HandleNeeded;
   procedure InsertControl(AControl: TControl);
   procedure Invalidate;
   procedure PaintTo(DC: HDC; X: Integer; Y: Integer);
   procedure PaintTo(Canvas: TCanvas; X: Integer; Y: Integer);
   function PreProcessMessage(var Msg: tagMSG): Boolean;
   procedure RemoveControl(AControl: TControl);
   procedure Realign;
   procedure Repaint;
   procedure ScaleBy(M: Integer; D: Integer);
   procedure ScrollBy(DeltaX: Integer; DeltaY: Integer);
   procedure SetBounds(ALeft: Integer; ATop: Integer; AWidth: Integer; AHeight: Integer);
   procedure SetDesignVisible(Value: Boolean);
   procedure SetFocus;
   procedure Update;
   procedure UpdateControlState;
   constructor Create(AOwner: TComponent);
   class destructor Destroy;
   procedure BeginDrag(Immediate: Boolean; Threshold: Integer);
   procedure BringToFront;
   function ClientToScreen(const Point: TPoint): TPoint;
   function ClientToParent(const Point: TPoint; AParent: TWinControl): TPoint;
   procedure Dock(NewDockSite: TWinControl; ARect: TRect);
   function Dragging: Boolean;
   procedure DragDrop(Source: TObject; X: Integer; Y: Integer);
   function DrawTextBiDiModeFlags(Flags: Integer): Integer;
   function DrawTextBiDiModeFlagsReadingOnly: Integer;
   procedure EndDrag(Drop: Boolean);
   function GetControlsAlignment: TAlignment;
   function GetParentComponent: TComponent;
   function HasParent: Boolean;
   procedure Hide;
   procedure InitiateAction;
   procedure Invalidate;
   procedure MouseWheelHandler(var Message: TMessage);
   function IsRightToLeft: Boolean;
   function ManualDock(NewDockSite: TWinControl; DropControl: TControl; ControlSide: TAlign): Boolean;
   function ManualFloat(ScreenPos: TRect): Boolean;
   function Perform(Msg: Cardinal; WParam: NativeUInt; LParam: NativeInt): NativeInt;
   procedure Refresh;
   procedure Repaint;
   function ReplaceDockedControl(Control: TControl; NewDockSite: TWinControl; DropControl: TControl; ControlSide: TAlign): Boolean;
   function ScreenToClient(const Point: TPoint): TPoint;
   function ParentToClient(const Point: TPoint; AParent: TWinControl): TPoint;
   procedure SendToBack;
   procedure SetBounds(ALeft: Integer; ATop: Integer; AWidth: Integer; AHeight: Integer);
   procedure SetDesignVisible(Value: Boolean);
   procedure SetParentComponent(Value: TComponent);
   procedure Show;
   procedure Update;
   function UseRightToLeftAlignment: Boolean;
   function UseRightToLeftReading: Boolean;
   function UseRightToLeftScrollBar: Boolean;
   procedure DefaultHandler(var Message);
   function GetTextBuf(Buffer: PWideChar; BufSize: Integer): Integer;
   function GetTextLen: Integer;
   function Perform(Msg: Cardinal; WParam: NativeUInt; LParam: PWideChar): NativeInt;
   function Perform(Msg: Cardinal; WParam: NativeUInt; var LParam: TRect): NativeInt;
   procedure SetTextBuf(Buffer: PWideChar);
   constructor Create(AOwner: TComponent);
   class destructor Destroy;
   procedure BeforeDestruction;
   procedure DestroyComponents;
   procedure Destroying;
   function ExecuteAction(Action: TBasicAction): Boolean;
   function FindComponent(const AName: string): TComponent;
   procedure FreeNotification(AComponent: TComponent);
   procedure RemoveFreeNotification(AComponent: TComponent);
   procedure FreeOnRelease;
   function GetEnumerator: TComponentEnumerator;
   function GetParentComponent: TComponent;
   function GetNamePath: string;
   function HasParent: Boolean;
   procedure InsertComponent(AComponent: TComponent);
   procedure RemoveComponent(AComponent: TComponent);
   procedure SetSubComponent(IsSubComponent: Boolean);
   function SafeCallException(ExceptObject: TObject; ExceptAddr: Pointer): HRESULT;
   function UpdateAction(Action: TBasicAction): Boolean;
   function IsImplementorOf(const I: IInterface): Boolean;
   function ReferenceInterface(const I: IInterface; Operation: TOperation): Boolean;
   class destructor Destroy;
   procedure Assign(Source: TPersistent);
   function GetNamePath: string;
   constructor Create;
   procedure Free;
   class function InitInstance(Instance: Pointer): TObject;
   procedure CleanupInstance;
   function ClassType: TClass;
   class function ClassName: string;
   class function ClassNameIs(const Name: string): Boolean;
   class function ClassParent: TClass;
   class function ClassInfo: Pointer;
   class function InstanceSize: Integer;
   class function InheritsFrom(AClass: TClass): Boolean;
   class function MethodAddress(const Name: ShortString): Pointer;
   class function MethodAddress(const Name: string): Pointer;
   class function MethodName(Address: Pointer): string;
   class function QualifiedClassName: string;
   function FieldAddress(const Name: ShortString): Pointer;
   function FieldAddress(const Name: string): Pointer;
   function GetInterface(const IID: TGUID; out Obj): Boolean;
   class function GetInterfaceEntry(const IID: TGUID): PInterfaceEntry;
   class function GetInterfaceTable: PInterfaceTable;
   class function UnitName: string;
   class function UnitScope: string;
   function Equals(Obj: TObject): Boolean;
   function GetHashCode: Integer;
   function ToString: string;
   function SafeCallException(ExceptObject: TObject; ExceptAddr: Pointer): HRESULT;
   procedure AfterConstruction;
   procedure BeforeDestruction;
   procedure Dispatch(var Message);
   procedure DefaultHandler(var Message);
   class function NewInstance: TObject;
   procedure FreeInstance;
   class destructor Destroy;
   property ActiveHTMLFrame: THTMLBaseFrameWindow;
   property ModuleModified: Boolean;
   property EditWindow: TEditWindow;
   property Status: TStatus;
   property TagEditorClosedByUser: Boolean;
   property Active: Boolean;
   property AutoMergeActions: Boolean;
   property AutoMergeMenus: Boolean;
   property AutoMergeImages: Boolean;
   property Caption: string;
   property HideMergedMenus: Boolean;
   property MergedMenuItems: TList;
   property AfterSave: TViewFrameNotifyEvent;
   property BeforeSave: TViewFrameNotifyEvent;
   property DesignerType: string;
   property IDEToolbarCount: Integer;
   property DesignerCommandsServices: IOTADesignerCommandServices;
   property ViewClosed: Boolean;
   property OnCommandChecked: TViewFrameIsCommandEvent;
   property OnCommandEnabled: TViewFrameIsCommandEvent;
   property OnCommandVisible: TViewFrameIsCommandEvent;
   property OnDesignerCommand: TViewFrameCommandEvent;
   property OnDesignerType: TViewFrameDesignerTypeEvent;
   property OnDestroyed: TViewFrameNotifyEvent;
   property OnDisplay: TViewFrameContextEventEx;
   property OnEditAction: TViewFrameEditActionEvent;
   property OnEditValidCommands: TViewFrameGetEditStateEvent;
   property OnGetActive: TViewFrameGetActiveEvent;
   property OnInitialDisplay: TViewFrameContextEventEx;
   property OnModified: TViewFrameNotifyEvent;
   property OnAlign: TViewFrameAlignEvent;
   property OnAlignAffectState: TViewFrameAlignableStateEvent;
   property OnSearchValidCommands: TViewFrameSearchCommandsEvent;
   property OnSearchFind: TNotifyEvent;
   property OnSearchAgain: TNotifyEvent;
   property OnSearchGotoLine: TNotifyEvent;
   property OnSearchIncremental: TNotifyEvent;
   property OnSearchReplace: TNotifyEvent;
   property OnSize: TViewFrameSizeEvent;
   property OnSizeAffectState: TViewFrameSizeAffectEvent;
   property OnHandles: TViewFrameContextEvent;
   property OnHide: TViewFrameContextEventEx;
   property OnViewClosed: TViewFrameContextEventEx;
   property DockClientCount: Integer;
   property DockSite: Boolean;
   property DockManager: IDockManager;
   property DoubleBuffered: Boolean;
   property AlignDisabled: Boolean;
   property MouseInClient: Boolean;
   property VisibleDockClientCount: Integer;
   property Brush: TBrush;
   property ControlCount: Integer;
   property Handle: HWND;
   property Padding: TPadding;
   property ParentDoubleBuffered: Boolean;
   property ParentWindow: HWND;
   property Showing: Boolean;
   property TabOrder: TTabOrder;
   property TabStop: Boolean;
   property UseDockManager: Boolean;
   property Enabled: Boolean;
   property Action: TBasicAction;
   property Align: TAlign;
   property Anchors: TAnchors;
   property BiDiMode: TBiDiMode;
   property BoundsRect: TRect;
   property ClientHeight: Integer;
   property ClientOrigin: TPoint;
   property ClientRect: TRect;
   property ClientWidth: Integer;
   property Constraints: TSizeConstraints;
   property ControlState: TControlState;
   property ControlStyle: TControlStyle;
   property DockOrientation: TDockOrientation;
   property ExplicitLeft: Integer;
   property ExplicitTop: Integer;
   property ExplicitWidth: Integer;
   property ExplicitHeight: Integer;
   property Floating: Boolean;
   property FloatingDockSiteClass: TWinControlClass;
   property HostDockSite: TWinControl;
   property LRDockWidth: Integer;
   property ShowHint: Boolean;
   property TBDockHeight: Integer;
   property Touch: TTouchManager;
   property UndockHeight: Integer;
   property UndockWidth: Integer;
   property Visible: Boolean;
   property WindowProc: TWndMethod;
   property Parent: TWinControl;
   property OnGesture: TGestureEvent;
   property ComObject: IInterface;
   property ComponentCount: Integer;
   property ComponentIndex: Integer;
   property ComponentState: TComponentState;
   property ComponentStyle: TComponentStyle;
   property DesignInfo: Integer;
   property Owner: TComponent;
   property VCLComObject: Pointer;
   property Observers: TObservers;
  published
   TrayPanel           :TPanel;
   BottomPanelSplitter :TSplitter;
   LocalMenu           :TPopupActionBar;
   ShowMarkupEditor    :TMenuItem;
   N1                  :TMenuItem;
   CutItem             :TMenuItem;
   CopyItem            :TMenuItem;
   PasteItem           :TMenuItem;
   DeleteItem          :TMenuItem;
   SelectAllItem       :TMenuItem;
   Properties1         :TMenuItem;
   HTMLControlBar      :TControlBar;
   N3                  :TMenuItem;
   CustomizeToolbarsItem:TMenuItem;
   DockLeftSplitter    :TSplitter;
   DockRightSplitter   :TSplitter;
   DockBottomSplitter  :TSplitter;
   DockBottomPanel     :TEditorDockPanel;
   DockRightPanel      :TEditorDockPanel;
   DockLeftPanel       :TEditorDockPanel;
   BottomDockTabSet    :TIDEDockTabSet;
   LeftDockTabSet      :TIDEDockTabSet;
   RightTabDock        :TIDEDockTabSet;
   EditorPanel         :TPanel;
   EditorDockTopSplitter:TSplitter;
   DockTopPanel        :TEditorDockPanel;
   TopDockTabSet       :TIDEDockTabSet;
   ViewinBrowser       :TMenuItem;
   BrowseWith          :TMenuItem;
   AddToRepository     :TMenuItem;
   procedure DockBottomSplitterCanResize(Sender: TObject; var NewSize: Integer; var Accept: Boolean);
   procedure ViewFrameResize(Sender: TObject);
   procedure DockPanelUnDock(Sender: TObject; Client: TControl; NewTarget: TWinControl; var Allow: Boolean);
   procedure BottomDockTabSetGetSiteInfo(Sender: TObject; DockClient: TControl; var InfluenceRect: TRect; MousePos: TPoint; var CanDock: Boolean);
   procedure BottomDockTabSetDockDrop(Sender: TObject; Source: TDragDockObject; X: Integer; Y: Integer);
   procedure DockTabRemoved(Sender: TObject);
   procedure DockTabAdded(Sender: TObject);
   procedure LeftDockTabSetDockDrop(Sender: TObject; Source: TDragDockObject; X: Integer; Y: Integer);
   procedure DockPanelDockOver(Sender: TObject; Source: TDragDockObject; X: Integer; Y: Integer; State: TDragState; var Accept: Boolean);
   procedure DockPanelGetSiteInfo(Sender: TObject; DockClient: TControl; var InfluenceRect: TRect; MousePos: TPoint; var CanDock: Boolean);
   procedure ViewFrameDisplay(Sender: TCustomViewFrame; const AContext: IInterface; AViewObject: TObject);
   procedure ViewFrameHide(Sender: TCustomViewFrame; const AContext: IInterface; AViewObject: TObject);
   procedure ViewFrameInitialDisplay(Sender: TCustomViewFrame; const AContext: IInterface; AViewObject: TObject);
   procedure ViewFrameSearchFind(Sender: TObject);
   procedure ViewFrameAlign(Sender: TCustomViewFrame; Affect: TOTAAffect);
   procedure ViewFrameCommandChecked(Sender: TCustomViewFrame; Command: string; var Result: Boolean);
   procedure ViewFrameCommandVisible(Sender: TCustomViewFrame; Command: string; var Result: Boolean);
   procedure ViewFrameCommandEnabled(Sender: TCustomViewFrame; Command: string; var Result: Boolean);
   procedure ViewFrameDesignerCommand(Sender: TCustomViewFrame; Command: string);
   function ViewFrameEditAction(Sender: TCustomViewFrame; const AContext: IInterface; Action: TEditAction; AViewObject: TObject): Boolean;
   procedure ViewFrameEditValidCommands(Sender: TCustomViewFrame; const AContext: IInterface; AViewObject: TObject; var EditCommands: TEditState);
   procedure ViewFrameSearchValidCommands(Sender: TCustomViewFrame; var SearchCommands: TValidSearchCommands);
   procedure ViewFrameSearchIncremental(Sender: TObject);
   procedure ViewFrameSearchReplace(Sender: TObject);
   procedure ViewFrameSize(Sender: TCustomViewFrame; Affect: TOTASizeAffect; Value: Integer);
   procedure ViewFrameSearchAgain(Sender: TObject);
   procedure BottomPanelSplitterMoved(Sender: TObject);
   procedure BottomPanelSplitterPaint(Sender: TObject);
   procedure ViewFrameViewClosed(Sender: TCustomViewFrame; const AContext: IInterface; AViewObject: TObject);
   procedure CustomizeToolbarsItemClick(Sender: TObject);
   procedure LocalMenuPopup(Sender: TObject);
   procedure ViewFrameGetActive(Sender: TCustomViewFrame; var IsActive: Boolean);
   procedure ViewFrameDesignerType(Sender: TCustomViewFrame; var DesignerType: string);
   procedure ViewFrameAlignAffectState(Sender: TCustomViewFrame; Affect: TOTAAffect; var State: TOTAAlignableState);
   procedure ViewFrameSizeAffectState(Sender: TCustomViewFrame; Affect: TOTASizeAffect; var State: TOTAAlignableState);
   procedure WMPostSetFocus(var Message: TMessage);
   procedure HTMLControlBarBandPaint(Sender: TObject; Control: TControl; Canvas: TCanvas; var ARect: TRect; var Options: TBandPaintOptions);
   property Align: TAlign;
   property Anchors: TAnchors;
   property AutoScroll: Boolean;
   property AutoSize: Boolean;
   property BiDiMode: TBiDiMode;
   property Constraints: TSizeConstraints;
   property DockSite: Boolean;
   property DragCursor: TCursor;
   property DragKind: TDragKind;
   property DragMode: TDragMode;
   property Enabled: Boolean;
   property Color: TColor;
   property Ctl3D: Boolean;
   property Font: TFont;
   property ParentBackground: Boolean;
   property ParentBiDiMode: Boolean;
   property ParentColor: Boolean;
   property ParentCtl3D: Boolean;
   property ParentFont: Boolean;
   property ParentShowHint: Boolean;
   property PopupMenu: TPopupMenu;
   property ShowHint: Boolean;
   property TabOrder: TTabOrder;
   property TabStop: Boolean;
   property Visible: Boolean;
   property OnAlignInsertBefore: TAlignInsertBeforeEvent;
   property OnAlignPosition: TAlignPositionEvent;
   property OnCanResize: TCanResizeEvent;
   property OnClick: TNotifyEvent;
   property OnConstrainedResize: TConstrainedResizeEvent;
   property OnContextPopup: TContextPopupEvent;
   property OnDblClick: TNotifyEvent;
   property OnDockDrop: TDockDropEvent;
   property OnDockOver: TDockOverEvent;
   property OnDragDrop: TDragDropEvent;
   property OnDragOver: TDragOverEvent;
   property OnEndDock: TEndDragEvent;
   property OnEndDrag: TEndDragEvent;
   property OnEnter: TNotifyEvent;
   property OnExit: TNotifyEvent;
   property OnGetSiteInfo: TGetSiteInfoEvent;
   property OnMouseDown: TMouseEvent;
   property OnMouseMove: TMouseMoveEvent;
   property OnMouseUp: TMouseEvent;
   property OnMouseWheel: TMouseWheelEvent;
   property OnMouseWheelDown: TMouseWheelUpDownEvent;
   property OnMouseWheelUp: TMouseWheelUpDownEvent;
   property OnResize: TNotifyEvent;
   property OnStartDock: TStartDockEvent;
   property OnStartDrag: TStartDragEvent;
   property OnUnDock: TUnDockEvent;
   property Active: Boolean;
   property AutoMergeActions: Boolean;
   property AutoMergeImages: Boolean;
   property AutoMergeMenus: Boolean;
   property Caption: string;
   property AfterSave: TViewFrameNotifyEvent;
   property BeforeSave: TViewFrameNotifyEvent;
   property DesignerType: string;
   property OnCommandChecked: TViewFrameIsCommandEvent;
   property OnCommandEnabled: TViewFrameIsCommandEvent;
   property OnCommandVisible: TViewFrameIsCommandEvent;
   property OnDesignerCommand: TViewFrameCommandEvent;
   property OnDesignerType: TViewFrameDesignerTypeEvent;
   property OnDestroyed: TViewFrameNotifyEvent;
   property OnDisplay: TViewFrameContextEventEx;
   property OnEditAction: TViewFrameEditActionEvent;
   property OnEditValidCommands: TViewFrameGetEditStateEvent;
   property OnGetActive: TViewFrameGetActiveEvent;
   property OnInitialDisplay: TViewFrameContextEventEx;
   property OnModified: TViewFrameNotifyEvent;
   property OnAlign: TViewFrameAlignEvent;
   property OnAlignAffectState: TViewFrameAlignableStateEvent;
   property OnSearchValidCommands: TViewFrameSearchCommandsEvent;
   property OnSearchFind: TNotifyEvent;
   property OnSearchAgain: TNotifyEvent;
   property OnSearchGotoLine: TNotifyEvent;
   property OnSearchIncremental: TNotifyEvent;
   property OnSearchReplace: TNotifyEvent;
   property OnSize: TViewFrameSizeEvent;
   property OnSizeAffectState: TViewFrameSizeAffectEvent;
   property OnHandles: TViewFrameContextEvent;
   property OnHide: TViewFrameContextEventEx;
   property OnViewClosed: TViewFrameContextEventEx;
   property OnAlignInsertBefore: TAlignInsertBeforeEvent;
   property OnAlignPosition: TAlignPositionEvent;
   property HorzScrollBar: TControlScrollBar;
   property VertScrollBar: TControlScrollBar;
   property AlignWithMargins: Boolean;
   property Left: Integer;
   property Top: Integer;
   property Width: Integer;
   property Height: Integer;
   property Cursor: TCursor;
   property Hint: string;
   property HelpType: THelpType;
   property HelpKeyword: string;
   property HelpContext: THelpContext;
   property Margins: TMargins;
   property CustomHint: TCustomHint;
   property ParentCustomHint: Boolean;
   property Name: TComponentName;
   property Tag: NativeInt;
  end;