.class public Lcom/netease/mrzhna/InputView;
.super Ljava/lang/Object;
.source "InputView.java"


# static fields
.field static final DEFAULT_RETURN_KEY:I = 0x12000000

.field static final TYPE_ALPHABET:I = 0x2

.field static final TYPE_ALPHANUMERIC:I = 0x3

.field static final TYPE_EMAILADDRESS:I = 0x4

.field static final TYPE_NONE:I = 0x5

.field static final TYPE_NORMAL:I = 0x0

.field static final TYPE_NUMBER:I = 0x1


# instance fields
.field private m_activity:Landroid/app/Activity;

.field private m_borderless:Z

.field private m_cancelBtn:Landroid/widget/Button;

.field private m_cancelBtnListener:Landroid/view/View$OnClickListener;

.field private m_defaultFontColor:I

.field private m_defaultFontSize:F

.field private m_dialog:Landroid/app/Dialog;

.field private m_editText:Landroid/widget/EditText;

.field private m_filter_pattern:Ljava/lang/String;

.field private m_fontColor:I

.field private m_fontSize:F

.field private m_hint:Ljava/lang/String;

.field private m_input_finished:Z

.field private m_isVertical:Z

.field private m_location:Landroid/graphics/Rect;

.field private m_maxLength:I

.field private m_okBtn:Landroid/widget/Button;

.field private m_okBtnListener:Landroid/view/View$OnClickListener;

.field private m_oldEditTextBg:Landroid/graphics/drawable/Drawable;

.field private m_paddingBottom:I

.field private m_paddingLeft:I

.field private m_paddingRight:I

.field private m_paddingTop:I

.field private m_returnKey:I

.field private m_text:Ljava/lang/String;

.field private m_type:I

.field private m_view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/netease/mrzhna/InputView;->m_activity:Landroid/app/Activity;

    .line 48
    iput-object v0, p0, Lcom/netease/mrzhna/InputView;->m_view:Landroid/view/View;

    .line 49
    iput-object v0, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    .line 50
    iput-object v0, p0, Lcom/netease/mrzhna/InputView;->m_okBtn:Landroid/widget/Button;

    .line 51
    iput-object v0, p0, Lcom/netease/mrzhna/InputView;->m_cancelBtn:Landroid/widget/Button;

    .line 52
    iput-object v0, p0, Lcom/netease/mrzhna/InputView;->m_okBtnListener:Landroid/view/View$OnClickListener;

    .line 53
    iput-object v0, p0, Lcom/netease/mrzhna/InputView;->m_cancelBtnListener:Landroid/view/View$OnClickListener;

    .line 54
    iput-object v0, p0, Lcom/netease/mrzhna/InputView;->m_dialog:Landroid/app/Dialog;

    .line 55
    iput-object v0, p0, Lcom/netease/mrzhna/InputView;->m_text:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/netease/mrzhna/InputView;->m_hint:Ljava/lang/String;

    const/4 v1, 0x1

    .line 57
    iput v1, p0, Lcom/netease/mrzhna/InputView;->m_type:I

    .line 58
    iput-boolean v1, p0, Lcom/netease/mrzhna/InputView;->m_input_finished:Z

    .line 59
    iput-object v0, p0, Lcom/netease/mrzhna/InputView;->m_location:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 60
    iput-boolean v2, p0, Lcom/netease/mrzhna/InputView;->m_borderless:Z

    .line 61
    iput-boolean v2, p0, Lcom/netease/mrzhna/InputView;->m_isVertical:Z

    .line 62
    iput-object v0, p0, Lcom/netease/mrzhna/InputView;->m_oldEditTextBg:Landroid/graphics/drawable/Drawable;

    .line 63
    iput v2, p0, Lcom/netease/mrzhna/InputView;->m_fontColor:I

    const/4 v3, 0x0

    .line 64
    iput v3, p0, Lcom/netease/mrzhna/InputView;->m_fontSize:F

    .line 65
    iput v2, p0, Lcom/netease/mrzhna/InputView;->m_paddingLeft:I

    .line 66
    iput v2, p0, Lcom/netease/mrzhna/InputView;->m_paddingRight:I

    .line 67
    iput v2, p0, Lcom/netease/mrzhna/InputView;->m_paddingTop:I

    .line 68
    iput v2, p0, Lcom/netease/mrzhna/InputView;->m_paddingBottom:I

    .line 69
    iput v2, p0, Lcom/netease/mrzhna/InputView;->m_defaultFontColor:I

    .line 70
    iput v3, p0, Lcom/netease/mrzhna/InputView;->m_defaultFontSize:F

    .line 71
    iput v2, p0, Lcom/netease/mrzhna/InputView;->m_maxLength:I

    .line 72
    iput v2, p0, Lcom/netease/mrzhna/InputView;->m_returnKey:I

    const-string v3, ""

    .line 91
    iput-object v3, p0, Lcom/netease/mrzhna/InputView;->m_filter_pattern:Ljava/lang/String;

    .line 163
    iput-object p1, p0, Lcom/netease/mrzhna/InputView;->m_activity:Landroid/app/Activity;

    .line 164
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 165
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 166
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 167
    iget p1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le p1, v4, :cond_0

    const p1, 0x7f090004

    .line 168
    invoke-virtual {v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/InputView;->m_view:Landroid/view/View;

    .line 169
    iput-boolean v2, p0, Lcom/netease/mrzhna/InputView;->m_isVertical:Z

    goto :goto_0

    :cond_0
    const p1, 0x7f090005

    .line 171
    invoke-virtual {v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/InputView;->m_view:Landroid/view/View;

    .line 172
    iput-boolean v1, p0, Lcom/netease/mrzhna/InputView;->m_isVertical:Z

    .line 174
    :goto_0
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_view:Landroid/view/View;

    const v0, 0x7f070038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    .line 175
    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/netease/mrzhna/InputView;->m_paddingLeft:I

    .line 176
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingRight()I

    move-result p1

    iput p1, p0, Lcom/netease/mrzhna/InputView;->m_paddingRight:I

    .line 177
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/netease/mrzhna/InputView;->m_paddingTop:I

    .line 178
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcom/netease/mrzhna/InputView;->m_paddingBottom:I

    .line 179
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    new-instance v0, Lcom/netease/mrzhna/InputView$2;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/InputView$2;-><init>(Lcom/netease/mrzhna/InputView;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 189
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mrzhna/InputView;->m_oldEditTextBg:Landroid/graphics/drawable/Drawable;

    .line 190
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getCurrentTextColor()I

    move-result p1

    iput p1, p0, Lcom/netease/mrzhna/InputView;->m_fontColor:I

    .line 191
    iput p1, p0, Lcom/netease/mrzhna/InputView;->m_defaultFontColor:I

    .line 192
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/netease/mrzhna/InputView;->m_fontSize:F

    .line 193
    iput p1, p0, Lcom/netease/mrzhna/InputView;->m_defaultFontSize:F

    .line 194
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_view:Landroid/view/View;

    const v0, 0x7f070049

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/netease/mrzhna/InputView;->m_okBtn:Landroid/widget/Button;

    .line 195
    new-instance p1, Lcom/netease/mrzhna/InputView$3;

    invoke-direct {p1, p0}, Lcom/netease/mrzhna/InputView$3;-><init>(Lcom/netease/mrzhna/InputView;)V

    iput-object p1, p0, Lcom/netease/mrzhna/InputView;->m_okBtnListener:Landroid/view/View$OnClickListener;

    .line 200
    iget-object v0, p0, Lcom/netease/mrzhna/InputView;->m_okBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_view:Landroid/view/View;

    const v0, 0x7f070031

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/netease/mrzhna/InputView;->m_cancelBtn:Landroid/widget/Button;

    .line 202
    new-instance p1, Lcom/netease/mrzhna/InputView$4;

    invoke-direct {p1, p0}, Lcom/netease/mrzhna/InputView$4;-><init>(Lcom/netease/mrzhna/InputView;)V

    iput-object p1, p0, Lcom/netease/mrzhna/InputView;->m_cancelBtnListener:Landroid/view/View$OnClickListener;

    .line 207
    iget-object v0, p0, Lcom/netease/mrzhna/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/netease/mrzhna/InputView;->m_activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/netease/mrzhna/InputView;->m_dialog:Landroid/app/Dialog;

    .line 209
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 210
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_dialog:Landroid/app/Dialog;

    new-instance v0, Lcom/netease/mrzhna/InputView$5;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/InputView$5;-><init>(Lcom/netease/mrzhna/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 227
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_dialog:Landroid/app/Dialog;

    new-instance v0, Lcom/netease/mrzhna/InputView$6;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/InputView$6;-><init>(Lcom/netease/mrzhna/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 239
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_dialog:Landroid/app/Dialog;

    new-instance v0, Lcom/netease/mrzhna/InputView$7;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/InputView$7;-><init>(Lcom/netease/mrzhna/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 252
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_dialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/netease/mrzhna/InputView;->m_view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 253
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/mrzhna/InputView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/netease/mrzhna/InputView;->m_maxLength:I

    return p0
.end method

.method static synthetic access$100(Lcom/netease/mrzhna/InputView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/netease/mrzhna/InputView;->m_returnKey:I

    return p0
.end method

.method static synthetic access$1000(Lcom/netease/mrzhna/InputView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/netease/mrzhna/InputView;->updateBorderless()V

    return-void
.end method

.method static synthetic access$1100(Lcom/netease/mrzhna/InputView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/netease/mrzhna/InputView;->updateFont()V

    return-void
.end method

.method static synthetic access$1200(Lcom/netease/mrzhna/InputView;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/mrzhna/InputView;->m_filter_pattern:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/mrzhna/InputView;)Landroid/app/Activity;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/mrzhna/InputView;->m_activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/mrzhna/InputView;)Landroid/widget/EditText;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/mrzhna/InputView;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/mrzhna/InputView;->m_view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/mrzhna/InputView;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/netease/mrzhna/InputView;->m_type:I

    return p0
.end method

.method static synthetic access$600(Lcom/netease/mrzhna/InputView;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/mrzhna/InputView;->m_hint:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/netease/mrzhna/InputView;)Ljava/lang/String;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/mrzhna/InputView;->m_text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/netease/mrzhna/InputView;)Landroid/app/Dialog;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/netease/mrzhna/InputView;->m_dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$900(Lcom/netease/mrzhna/InputView;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/netease/mrzhna/InputView;->updateLocation()V

    return-void
.end method

.method private updateBorderless()V
    .locals 8

    .line 454
    iget-object v0, p0, Lcom/netease/mrzhna/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 455
    iget-boolean v1, p0, Lcom/netease/mrzhna/InputView;->m_borderless:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 456
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 457
    iget-object v1, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 458
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    .line 459
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_0

    .line 461
    :cond_0
    invoke-virtual {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    const/4 v4, -0x1

    .line 462
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 463
    iget-object v4, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    iget-object v1, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 465
    iget-object v1, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 466
    iget-object v1, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 467
    iget-object v1, p0, Lcom/netease/mrzhna/InputView;->m_okBtn:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 468
    iget-object v1, p0, Lcom/netease/mrzhna/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 469
    iget-object v1, p0, Lcom/netease/mrzhna/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 470
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_1

    .line 471
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_1

    .line 473
    :cond_1
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 474
    :goto_1
    iget-object v2, p0, Lcom/netease/mrzhna/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 476
    :cond_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 477
    iget-object v1, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 478
    iget-boolean v4, p0, Lcom/netease/mrzhna/InputView;->m_isVertical:Z

    if-nez v4, :cond_3

    const v4, 0x7f070049

    .line 479
    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_3
    const/4 v4, -0x2

    .line 480
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 481
    iget-object v4, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v1, v4, :cond_4

    .line 483
    iget-object v1, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/netease/mrzhna/InputView;->m_oldEditTextBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 485
    :cond_4
    iget-object v1, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/netease/mrzhna/InputView;->m_oldEditTextBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 486
    :goto_2
    iget-object v1, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    iget v4, p0, Lcom/netease/mrzhna/InputView;->m_paddingLeft:I

    iget v5, p0, Lcom/netease/mrzhna/InputView;->m_paddingRight:I

    iget v6, p0, Lcom/netease/mrzhna/InputView;->m_paddingTop:I

    iget v7, p0, Lcom/netease/mrzhna/InputView;->m_paddingBottom:I

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 487
    iget-object v1, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 488
    iget-object v1, p0, Lcom/netease/mrzhna/InputView;->m_okBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 489
    iget-object v1, p0, Lcom/netease/mrzhna/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 490
    iget-boolean v1, p0, Lcom/netease/mrzhna/InputView;->m_isVertical:Z

    if-eqz v1, :cond_5

    .line 491
    iget-object v1, p0, Lcom/netease/mrzhna/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const v3, 0x7f070038

    .line 492
    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 493
    iget-object v2, p0, Lcom/netease/mrzhna/InputView;->m_cancelBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    :cond_5
    :goto_3
    iget-object v1, p0, Lcom/netease/mrzhna/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private updateFont()V
    .locals 3

    .line 532
    iget-object v0, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    iget v1, p0, Lcom/netease/mrzhna/InputView;->m_fontSize:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 533
    iget-object v0, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    iget v1, p0, Lcom/netease/mrzhna/InputView;->m_fontColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method private updateLocation()V
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/netease/mrzhna/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 416
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x700

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x33

    .line 418
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 419
    iget-object v2, p0, Lcom/netease/mrzhna/InputView;->m_location:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 420
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 421
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, -0x1

    .line 422
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 423
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 425
    :cond_0
    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 426
    iget-object v2, p0, Lcom/netease/mrzhna/InputView;->m_location:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 427
    iget-object v2, p0, Lcom/netease/mrzhna/InputView;->m_location:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 428
    iget-object v2, p0, Lcom/netease/mrzhna/InputView;->m_location:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 430
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addLengthFilter()V
    .locals 6

    .line 127
    iget v0, p0, Lcom/netease/mrzhna/InputView;->m_maxLength:I

    if-gtz v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 132
    :goto_0
    array-length v3, v0

    const/4 v4, -0x1

    if-ge v2, v3, :cond_2

    .line 133
    aget-object v3, v0, v2

    instance-of v3, v3, Landroid/text/InputFilter$LengthFilter;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    .line 138
    :goto_1
    new-instance v3, Lcom/netease/mrzhna/InputView$1;

    iget v5, p0, Lcom/netease/mrzhna/InputView;->m_maxLength:I

    invoke-direct {v3, p0, v5}, Lcom/netease/mrzhna/InputView$1;-><init>(Lcom/netease/mrzhna/InputView;I)V

    if-ne v2, v4, :cond_3

    .line 150
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    .line 151
    array-length v4, v0

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    array-length v0, v0

    aput-object v3, v2, v0

    .line 153
    iget-object v0, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_2

    .line 156
    :cond_3
    aput-object v3, v0, v2

    .line 157
    iget-object v1, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :goto_2
    return-void
.end method

.method public getDefaultFontColor()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/netease/mrzhna/InputView;->m_defaultFontColor:I

    return v0
.end method

.method public getDefaultFontSize()F
    .locals 1

    .line 78
    iget v0, p0, Lcom/netease/mrzhna/InputView;->m_defaultFontSize:F

    return v0
.end method

.method public getFontColor()I
    .locals 1

    .line 528
    iget v0, p0, Lcom/netease/mrzhna/InputView;->m_fontColor:I

    return v0
.end method

.method public getFontSize()F
    .locals 1

    .line 512
    iget v0, p0, Lcom/netease/mrzhna/InputView;->m_fontSize:F

    return v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/netease/mrzhna/InputView;->m_hint:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()[I
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/netease/mrzhna/InputView;->m_location:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 409
    iget v0, v0, Landroid/graphics/Rect;->left:I

    aput v0, v1, v2

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/netease/mrzhna/InputView;->m_location:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    aput v2, v1, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/netease/mrzhna/InputView;->m_location:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/netease/mrzhna/InputView;->m_location:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    aput v2, v1, v0

    return-object v1
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/netease/mrzhna/InputView;->m_text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/netease/mrzhna/InputView;->m_type:I

    return v0
.end method

.method public inputFinish(Z)V
    .locals 2

    .line 383
    iget-boolean v0, p0, Lcom/netease/mrzhna/InputView;->m_input_finished:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 384
    iput-boolean v0, p0, Lcom/netease/mrzhna/InputView;->m_input_finished:Z

    .line 385
    iget-object v0, p0, Lcom/netease/mrzhna/InputView;->m_editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/netease/mrzhna/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 387
    invoke-static {v0, p1}, Lcom/netease/neox/NativeInterface;->NativeOnInputFinish(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public isBorderless()Z
    .locals 1

    .line 448
    iget-boolean v0, p0, Lcom/netease/mrzhna/InputView;->m_borderless:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/netease/mrzhna/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setBorderless(Z)V
    .locals 1

    .line 434
    iget-boolean v0, p0, Lcom/netease/mrzhna/InputView;->m_borderless:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 436
    :cond_0
    iput-boolean p1, p0, Lcom/netease/mrzhna/InputView;->m_borderless:Z

    .line 437
    invoke-virtual {p0}, Lcom/netease/mrzhna/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 438
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mrzhna/InputView$14;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/InputView$14;-><init>(Lcom/netease/mrzhna/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public setFilterPattern(I)V
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 111
    iput-object v0, p0, Lcom/netease/mrzhna/InputView;->m_filter_pattern:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "[a-zA-Z0-9._\\-@].*"

    .line 108
    iput-object p1, p0, Lcom/netease/mrzhna/InputView;->m_filter_pattern:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "[0-9a-zA-Z].*"

    .line 105
    iput-object p1, p0, Lcom/netease/mrzhna/InputView;->m_filter_pattern:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, "[a-zA-Z].*"

    .line 102
    iput-object p1, p0, Lcom/netease/mrzhna/InputView;->m_filter_pattern:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string p1, "[0-9].*"

    .line 99
    iput-object p1, p0, Lcom/netease/mrzhna/InputView;->m_filter_pattern:Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_4
    iput-object v0, p0, Lcom/netease/mrzhna/InputView;->m_filter_pattern:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setFontColor(I)V
    .locals 1

    .line 516
    iput p1, p0, Lcom/netease/mrzhna/InputView;->m_fontColor:I

    .line 517
    invoke-virtual {p0}, Lcom/netease/mrzhna/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 518
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mrzhna/InputView$16;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/InputView$16;-><init>(Lcom/netease/mrzhna/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setFontSize(F)V
    .locals 1

    .line 500
    iput p1, p0, Lcom/netease/mrzhna/InputView;->m_fontSize:F

    .line 501
    invoke-virtual {p0}, Lcom/netease/mrzhna/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 502
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mrzhna/InputView$15;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/InputView$15;-><init>(Lcom/netease/mrzhna/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1

    .line 275
    iput-object p1, p0, Lcom/netease/mrzhna/InputView;->m_hint:Ljava/lang/String;

    .line 276
    invoke-virtual {p0}, Lcom/netease/mrzhna/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 277
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mrzhna/InputView$9;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/InputView$9;-><init>(Lcom/netease/mrzhna/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setLocation(IIII)V
    .locals 1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/netease/mrzhna/InputView;->m_location:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 393
    iput-object p1, p0, Lcom/netease/mrzhna/InputView;->m_location:Landroid/graphics/Rect;

    .line 396
    :goto_1
    invoke-virtual {p0}, Lcom/netease/mrzhna/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 397
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_activity:Landroid/app/Activity;

    new-instance p2, Lcom/netease/mrzhna/InputView$13;

    invoke-direct {p2, p0}, Lcom/netease/mrzhna/InputView$13;-><init>(Lcom/netease/mrzhna/InputView;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public setMaxLength(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 121
    iput p1, p0, Lcom/netease/mrzhna/InputView;->m_maxLength:I

    :cond_0
    return-void
.end method

.method public setReturnKey(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/netease/mrzhna/InputView;->m_returnKey:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 292
    iput-object p1, p0, Lcom/netease/mrzhna/InputView;->m_text:Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Lcom/netease/mrzhna/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 294
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mrzhna/InputView$10;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/InputView$10;-><init>(Lcom/netease/mrzhna/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 258
    iput p1, p0, Lcom/netease/mrzhna/InputView;->m_type:I

    .line 259
    invoke-virtual {p0}, Lcom/netease/mrzhna/InputView;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mrzhna/InputView$8;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/InputView$8;-><init>(Lcom/netease/mrzhna/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/netease/mrzhna/InputView;->m_dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 315
    iput-boolean p1, p0, Lcom/netease/mrzhna/InputView;->m_input_finished:Z

    .line 316
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mrzhna/InputView$11;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/InputView$11;-><init>(Lcom/netease/mrzhna/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 368
    :cond_1
    iget-object p1, p0, Lcom/netease/mrzhna/InputView;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mrzhna/InputView$12;

    invoke-direct {v0, p0}, Lcom/netease/mrzhna/InputView$12;-><init>(Lcom/netease/mrzhna/InputView;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
