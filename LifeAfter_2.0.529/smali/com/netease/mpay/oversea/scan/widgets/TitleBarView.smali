.class public Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;
.super Landroid/widget/LinearLayout;
.source "TitleBarView.java"


# instance fields
.field private mBackBtn:Landroid/view/View;

.field private mBackImageView:Landroid/widget/ImageView;

.field private mRoot:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0900ee

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->mRoot:Landroid/view/View;

    .line 45
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->mRoot:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->addView(Landroid/view/View;)V

    const p1, 0x7f0702e3

    .line 46
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->mBackImageView:Landroid/widget/ImageView;

    const p1, 0x7f0702e2

    .line 47
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->mBackBtn:Landroid/view/View;

    const p1, 0x7f0702e4

    .line 48
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->mTitle:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public populate(Landroid/view/View$OnClickListener;ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->mBackImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    if-eqz p3, :cond_1

    .line 60
    iget-object p2, p0, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->mBackBtn:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    :cond_1
    iget-object p2, p0, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->mBackBtn:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public populateBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->mRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public populateTitle(Ljava/lang/String;I)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    .line 68
    iget-object p1, p0, Lcom/netease/mpay/oversea/scan/widgets/TitleBarView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method
