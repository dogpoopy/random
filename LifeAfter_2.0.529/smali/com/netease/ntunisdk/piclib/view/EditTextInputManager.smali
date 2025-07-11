.class public Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;
.super Ljava/lang/Object;
.source "EditTextInputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$OnShowOrDismissListener;,
        Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$OnOutputListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EditTextInputManager"


# instance fields
.field private cmvColorMagazineBase:Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;

.field private cmvColorMagazineDynamic:Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;

.field private container:Landroid/view/ViewGroup;

.field private context:Landroid/content/Context;

.field private currentTextColor:I

.field private decorView:Landroid/view/View;

.field private defaultColor:I

.field private etInput:Landroid/widget/EditText;

.field private globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private inflate:Landroid/view/View;

.field private inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private lastLandscapeHeight:I

.field private lastPortraitHeight:I

.field private offset:F

.field private onOutputListener:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$OnOutputListener;

.field private onShowOrDismissListener:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$OnShowOrDismissListener;

.field private showing:Z

.field private window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/Window;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "container",
            "window"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->container:Landroid/view/ViewGroup;

    .line 48
    iput-object p2, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->window:Landroid/view/Window;

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->context:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;)Landroid/widget/EditText;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->etInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$102(Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->currentTextColor:I

    return p1
.end method

.method static synthetic access$200(Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;)Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->cmvColorMagazineBase:Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;)Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->cmvColorMagazineDynamic:Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;

    return-object p0
.end method

.method private dismissSoftInput()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 177
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->etInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private init()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v0, v0, v1

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->offset:F

    .line 55
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->context:Landroid/content/Context;

    const-string v1, "pic_lib_white"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->defaultColor:I

    .line 56
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->context:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 57
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->context:Landroid/content/Context;

    const-string v2, "view_edit_text_input"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->inflate:Landroid/view/View;

    .line 58
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->context:Landroid/content/Context;

    const-string v2, "et_us_pic_text_input"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->etInput:Landroid/widget/EditText;

    const/4 v1, -0x1

    .line 59
    iput v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->currentTextColor:I

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 61
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->inflate:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->context:Landroid/content/Context;

    const-string v2, "cmv_us_pic_text_color_magazine_base"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->cmvColorMagazineBase:Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;

    .line 62
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->inflate:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->context:Landroid/content/Context;

    const-string v2, "cmv_us_pic_text_color_magazine_dynamic"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->cmvColorMagazineDynamic:Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;

    .line 64
    new-instance v0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$1;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$1;-><init>(Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;)V

    .line 74
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->cmvColorMagazineBase:Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->setOnColorChangedListener(Lcom/netease/ntunisdk/piclib/view/ColorMagazineView$OnColorChangedListener;)V

    .line 75
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->cmvColorMagazineDynamic:Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->setOnColorChangedListener(Lcom/netease/ntunisdk/piclib/view/ColorMagazineView$OnColorChangedListener;)V

    .line 77
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->inflate:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->context:Landroid/content/Context;

    const-string v2, "tv_us_pic_text_input_cancel"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    new-instance v1, Lcom/netease/ntunisdk/piclib/view/-$$Lambda$EditTextInputManager$qkWDAsr40w3fbihiObZ5xTCJQfQ;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/view/-$$Lambda$EditTextInputManager$qkWDAsr40w3fbihiObZ5xTCJQfQ;-><init>(Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->inflate:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->context:Landroid/content/Context;

    const-string v2, "bt_us_pic_text_input_done"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 83
    new-instance v1, Lcom/netease/ntunisdk/piclib/view/-$$Lambda$EditTextInputManager$DJ2hIXZUl4kU9VKwiW6cUdZEEr4;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/view/-$$Lambda$EditTextInputManager$DJ2hIXZUl4kU9VKwiW6cUdZEEr4;-><init>(Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->decorView:Landroid/view/View;

    .line 91
    new-instance v0, Lcom/netease/ntunisdk/piclib/view/-$$Lambda$EditTextInputManager$7PZBtfpmQfqvYOOxrMkfi3zcRk0;

    invoke-direct {v0, p0}, Lcom/netease/ntunisdk/piclib/view/-$$Lambda$EditTextInputManager$7PZBtfpmQfqvYOOxrMkfi3zcRk0;-><init>(Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;)V

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 127
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private showSoftInput()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 171
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->etInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 158
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->showing:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->container:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->inflate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->showing:Z

    .line 161
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->dismissSoftInput()V

    .line 162
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->onShowOrDismissListener:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$OnShowOrDismissListener;

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$OnShowOrDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->showing:Z

    return v0
.end method

.method public synthetic lambda$init$0$EditTextInputManager(Landroid/view/View;)V
    .locals 0

    .line 79
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->dismiss()V

    return-void
.end method

.method public synthetic lambda$init$1$EditTextInputManager(Landroid/view/View;)V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->dismiss()V

    .line 85
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->onOutputListener:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$OnOutputListener;

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->currentTextColor:I

    invoke-interface {p1, v0, v1}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$OnOutputListener;->onOutput(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$init$2$EditTextInputManager()V
    .locals 3

    .line 92
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->showing:Z

    if-eqz v0, :cond_5

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->decorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 95
    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 98
    iget v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->lastLandscapeHeight:I

    if-nez v1, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->lastLandscapeHeight:I

    return-void

    .line 103
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->lastLandscapeHeight:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 105
    iget v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->lastPortraitHeight:I

    if-nez v1, :cond_2

    .line 106
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->lastPortraitHeight:I

    return-void

    .line 110
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->lastPortraitHeight:I

    .line 115
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v2, v1, v2

    .line 116
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, v1

    const/16 v1, 0xc8

    if-le v2, v1, :cond_3

    .line 119
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->cmvColorMagazineDynamic:Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->cmvColorMagazineDynamic:Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->cmvColorMagazineBase:Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;

    invoke-virtual {v1}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->getY()F

    move-result v1

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->offset:F

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->setY(F)V

    goto :goto_1

    :cond_3
    if-le v0, v1, :cond_5

    .line 123
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->cmvColorMagazineDynamic:Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->setVisibility(I)V

    goto :goto_1

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->cmvColorMagazineDynamic:Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->decorView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 182
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->dismissSoftInput()V

    .line 183
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->cmvColorMagazineDynamic:Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->setVisibility(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->etInput:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 138
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->defaultColor:I

    .line 139
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public setOnOutputListener(Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$OnOutputListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onOutputListener"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->onOutputListener:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$OnOutputListener;

    return-void
.end method

.method public setOnShowOrDismissListener(Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$OnShowOrDismissListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onShowOrDismissListener"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->onShowOrDismissListener:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$OnShowOrDismissListener;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->etInput:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .line 148
    iget-boolean v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->showing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->showing:Z

    .line 150
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->container:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->inflate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 151
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->showSoftInput()V

    .line 152
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager;->onShowOrDismissListener:Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$OnShowOrDismissListener;

    if-eqz v0, :cond_1

    .line 153
    invoke-interface {v0}, Lcom/netease/ntunisdk/piclib/view/EditTextInputManager$OnShowOrDismissListener;->onShow()V

    :cond_1
    return-void
.end method
