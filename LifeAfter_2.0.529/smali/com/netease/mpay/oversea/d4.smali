.class public Lcom/netease/mpay/oversea/d4;
.super Ljava/lang/Object;
.source "IconWrapper.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field d:Z

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netease/mpay/oversea/v2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/netease/mpay/oversea/d4;->b:I

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/d4;->d:Z

    .line 25
    iput-object p1, p0, Lcom/netease/mpay/oversea/d4;->a:Ljava/lang/String;

    .line 26
    invoke-direct {p0, p2}, Lcom/netease/mpay/oversea/d4;->a(Lcom/netease/mpay/oversea/v2;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/mpay/oversea/d4;->c:Z

    .line 27
    iget-object p1, p2, Lcom/netease/mpay/oversea/v2;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/d4;->e:Ljava/lang/String;

    .line 28
    iget-object p1, p2, Lcom/netease/mpay/oversea/v2;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/d4;->f:Ljava/lang/String;

    .line 29
    iget-object p1, p2, Lcom/netease/mpay/oversea/v2;->i:Ljava/lang/String;

    iput-object p1, p0, Lcom/netease/mpay/oversea/d4;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/v2;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 16
    iget-object v1, p1, Lcom/netease/mpay/oversea/v2;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    .line 17
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netease/mpay/oversea/d4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/netease/mpay/oversea/v2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-static {}, Lcom/netease/mpay/oversea/g8;->a()Z

    move-result v2

    const-string v3, "drawable"

    .line 19
    invoke-static {v1, v3}, Lcom/netease/mpay/oversea/g8;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 23
    iput v1, p0, Lcom/netease/mpay/oversea/d4;->b:I

    .line 24
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/d4;->d:Z

    return v3

    .line 27
    :cond_2
    iget-boolean p1, p1, Lcom/netease/mpay/oversea/v2;->j:Z

    if-eqz p1, :cond_3

    .line 29
    iput-boolean v3, p0, Lcom/netease/mpay/oversea/d4;->d:Z

    return v3

    :cond_3
    if-eqz v2, :cond_4

    return v0

    .line 37
    :cond_4
    iput-boolean v3, p0, Lcom/netease/mpay/oversea/d4;->d:Z

    return v3

    :cond_5
    :goto_1
    return v0
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/d4;->d:Z

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/netease/mpay/oversea/d4;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/d4;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/mpay/oversea/d4;->g:Ljava/lang/String;

    move v5, p3

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/netease/mpay/oversea/ec;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p3, v0, :cond_0

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 11
    :cond_1
    sget p2, Lcom/netease/mpay/oversea/R$drawable;->netease_mpay_oversea__usercenter_tab_dynamic:I

    invoke-static {p2}, Lcom/netease/mpay/oversea/g8;->b(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 15
    :cond_2
    iget p2, p0, Lcom/netease/mpay/oversea/d4;->b:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
