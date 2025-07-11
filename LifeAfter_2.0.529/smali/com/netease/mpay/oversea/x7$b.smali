.class Lcom/netease/mpay/oversea/x7$b;
.super Ljava/lang/Object;
.source "PassportWebView.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/z$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/x7;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/x7;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/x7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/x7$b;->a:Lcom/netease/mpay/oversea/x7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/x7$b;->a:Lcom/netease/mpay/oversea/x7;

    invoke-static {p1}, Lcom/netease/mpay/oversea/x7;->a(Lcom/netease/mpay/oversea/x7;)Lcom/netease/mpay/oversea/ui/y;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/y;->j()V

    :cond_0
    return-void
.end method
