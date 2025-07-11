.class Lcom/netease/mpay/oversea/r2$g;
.super Lcom/netease/mpay/oversea/f1;
.source "EmailVerifyCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/r2;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/netease/mpay/oversea/r2;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/r2;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/r2$g;->f:Lcom/netease/mpay/oversea/r2;

    iput-boolean p2, p0, Lcom/netease/mpay/oversea/r2$g;->d:Z

    iput-object p3, p0, Lcom/netease/mpay/oversea/r2$g;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/mpay/oversea/f1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/r2$g;->f:Lcom/netease/mpay/oversea/r2;

    iget-boolean v0, p0, Lcom/netease/mpay/oversea/r2$g;->d:Z

    iget-object v1, p0, Lcom/netease/mpay/oversea/r2$g;->e:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/netease/mpay/oversea/r2;->a(Lcom/netease/mpay/oversea/r2;ZLjava/lang/String;)V

    return-void
.end method
