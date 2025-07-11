.class public Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;
.super Landroid/widget/HorizontalScrollView;
.source "ColorMagazineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/piclib/view/ColorMagazineView$OnColorChangedListener;
    }
.end annotation


# instance fields
.field blackColorId:I

.field blackGbId:I

.field blackRb:Landroid/widget/RadioButton;

.field blueColorId:I

.field blueGbId:I

.field blueRb:Landroid/widget/RadioButton;

.field currentColor:I

.field greenColorId:I

.field greenGbId:I

.field greenRb:Landroid/widget/RadioButton;

.field onColorChangedListener:Lcom/netease/ntunisdk/piclib/view/ColorMagazineView$OnColorChangedListener;

.field purpleColorId:I

.field purpleGbId:I

.field purpleRb:Landroid/widget/RadioButton;

.field redColorId:I

.field redGbId:I

.field redRb:Landroid/widget/RadioButton;

.field rgColorMagazine:Landroid/widget/RadioGroup;

.field whiteColorId:I

.field whiteGbId:I

.field whiteRb:Landroid/widget/RadioButton;

.field yellowColorId:I

.field yellowGbId:I

.field yellowRb:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->initMagazine()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-direct {p0}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->initMagazine()V

    return-void
.end method

.method private gbId2Color(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gbId"
        }
    .end annotation

    .line 116
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->whiteGbId:I

    if-ne p1, v0, :cond_0

    .line 117
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->whiteColorId:I

    return p1

    .line 118
    :cond_0
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->yellowGbId:I

    if-ne p1, v0, :cond_1

    .line 119
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->yellowColorId:I

    return p1

    .line 120
    :cond_1
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->greenGbId:I

    if-ne p1, v0, :cond_2

    .line 121
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->greenColorId:I

    return p1

    .line 122
    :cond_2
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->blueGbId:I

    if-ne p1, v0, :cond_3

    .line 123
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->blueColorId:I

    return p1

    .line 124
    :cond_3
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->redGbId:I

    if-ne p1, v0, :cond_4

    .line 125
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->redColorId:I

    return p1

    .line 126
    :cond_4
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->purpleGbId:I

    if-ne p1, v0, :cond_5

    .line 127
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->purpleColorId:I

    return p1

    .line 128
    :cond_5
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->blackGbId:I

    if-ne p1, v0, :cond_6

    .line 129
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->blackColorId:I

    return p1

    .line 130
    :cond_6
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->whiteColorId:I

    return p1
.end method

.method private initId(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "inflate"
        }
    .end annotation

    const-string v0, "pic_lib_white"

    .line 57
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->whiteColorId:I

    const-string v0, "color_yellow"

    .line 58
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->yellowColorId:I

    const-string v0, "color_green"

    .line 59
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->greenColorId:I

    const-string v0, "color_blue"

    .line 60
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->blueColorId:I

    const-string v0, "color_red"

    .line 61
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->redColorId:I

    const-string v0, "color_purple"

    .line 62
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->purpleColorId:I

    const-string v0, "color_black"

    .line 63
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getColorId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->blackColorId:I

    const-string v0, "rb_us_pic_edit_snapshot_white"

    .line 65
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->whiteGbId:I

    const-string v0, "rb_us_pic_edit_snapshot_yellow"

    .line 66
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->yellowGbId:I

    const-string v0, "rb_us_pic_edit_snapshot_green"

    .line 67
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->greenGbId:I

    const-string v0, "rb_us_pic_edit_snapshot_blue"

    .line 68
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->blueGbId:I

    const-string v0, "rb_us_pic_edit_snapshot_red"

    .line 69
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->redGbId:I

    const-string v0, "rb_us_pic_edit_snapshot_purple"

    .line 70
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->purpleGbId:I

    const-string v0, "rb_us_pic_edit_snapshot_black"

    .line 71
    invoke-static {p1, v0}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->blackGbId:I

    .line 73
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->whiteGbId:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->whiteRb:Landroid/widget/RadioButton;

    .line 74
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->yellowGbId:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->yellowRb:Landroid/widget/RadioButton;

    .line 75
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->greenGbId:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->greenRb:Landroid/widget/RadioButton;

    .line 76
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->blueGbId:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->blueRb:Landroid/widget/RadioButton;

    .line 77
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->redGbId:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->redRb:Landroid/widget/RadioButton;

    .line 78
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->purpleGbId:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->purpleRb:Landroid/widget/RadioButton;

    .line 79
    iget p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->blackGbId:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->blackRb:Landroid/widget/RadioButton;

    return-void
.end method

.method private initMagazine()V
    .locals 4

    .line 83
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "view_color_magazine"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->addView(Landroid/view/View;)V

    .line 85
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->initId(Landroid/content/Context;Landroid/view/View;)V

    .line 86
    iget v1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->whiteColorId:I

    iput v1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->currentColor:I

    .line 87
    invoke-virtual {p0}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "rg_us_pic_edit_color_magazine"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/piclib/utils/ResUtil;->getIdId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->rgColorMagazine:Landroid/widget/RadioGroup;

    .line 88
    new-instance v1, Lcom/netease/ntunisdk/piclib/view/-$$Lambda$ColorMagazineView$uMfMIFRxapY-onl7CxlSu4PrCXA;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/piclib/view/-$$Lambda$ColorMagazineView$uMfMIFRxapY-onl7CxlSu4PrCXA;-><init>(Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public check(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 97
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->currentColor:I

    if-ne p1, v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->whiteColorId:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 99
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->whiteRb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 100
    :cond_1
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->yellowColorId:I

    if-ne p1, v0, :cond_2

    .line 101
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->yellowRb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 102
    :cond_2
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->greenColorId:I

    if-ne p1, v0, :cond_3

    .line 103
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->greenRb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 104
    :cond_3
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->blueColorId:I

    if-ne p1, v0, :cond_4

    .line 105
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->blueRb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 106
    :cond_4
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->redColorId:I

    if-ne p1, v0, :cond_5

    .line 107
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->redRb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 108
    :cond_5
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->purpleColorId:I

    if-ne p1, v0, :cond_6

    .line 109
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->purpleRb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 110
    :cond_6
    iget v0, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->blackColorId:I

    if-ne p1, v0, :cond_7

    .line 111
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->blackRb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public synthetic lambda$initMagazine$0$ColorMagazineView(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p2}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->gbId2Color(I)I

    move-result p1

    iput p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->currentColor:I

    .line 90
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->onColorChangedListener:Lcom/netease/ntunisdk/piclib/view/ColorMagazineView$OnColorChangedListener;

    if-eqz p2, :cond_0

    .line 91
    invoke-interface {p2, p1}, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    return-void
.end method

.method public setOnColorChangedListener(Lcom/netease/ntunisdk/piclib/view/ColorMagazineView$OnColorChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onColorChangedListener"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/view/ColorMagazineView;->onColorChangedListener:Lcom/netease/ntunisdk/piclib/view/ColorMagazineView$OnColorChangedListener;

    return-void
.end method
