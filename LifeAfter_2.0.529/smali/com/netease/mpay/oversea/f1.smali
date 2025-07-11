.class public abstract Lcom/netease/mpay/oversea/f1;
.super Ljava/lang/Object;
.source "CustomClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Z

.field private b:Lcom/netease/mpay/oversea/ec$b;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/f1;->a:Z

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/netease/mpay/oversea/f1;->c:I

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/netease/mpay/oversea/f1;->c:I

    if-lez v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/netease/mpay/oversea/g8;->c(I)V

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/f1;->b(Landroid/view/View;)V

    const-string p1, "CustomClickListener innerCustomClick() is called!"

    .line 6
    invoke-static {p1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/oversea/f1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/f1;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/netease/mpay/oversea/f1;
    .locals 1

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/netease/mpay/oversea/f1;->a:Z

    .line 8
    new-instance v0, Lcom/netease/mpay/oversea/f1$a;

    invoke-direct {v0, p0}, Lcom/netease/mpay/oversea/f1$a;-><init>(Lcom/netease/mpay/oversea/f1;)V

    iput-object v0, p0, Lcom/netease/mpay/oversea/f1;->b:Lcom/netease/mpay/oversea/ec$b;

    return-object p0
.end method

.method protected abstract b(Landroid/view/View;)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/mpay/oversea/f1;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/oversea/f1;->b:Lcom/netease/mpay/oversea/ec$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/ec$b;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/f1;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method
