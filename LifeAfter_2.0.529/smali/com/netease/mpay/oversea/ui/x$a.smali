.class Lcom/netease/mpay/oversea/ui/x$a;
.super Ljava/lang/Object;
.source "WebVerifyHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ui/z$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/x;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ui/x;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/x$a;->a:Lcom/netease/mpay/oversea/ui/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/x$a;->a:Lcom/netease/mpay/oversea/ui/x;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/x;->a(Lcom/netease/mpay/oversea/ui/x;)Lcom/netease/mpay/oversea/ui/y;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/x$a;->a:Lcom/netease/mpay/oversea/ui/x;

    invoke-static {p1}, Lcom/netease/mpay/oversea/ui/x;->a(Lcom/netease/mpay/oversea/ui/x;)Lcom/netease/mpay/oversea/ui/y;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/y;->j()V

    :cond_0
    return-void
.end method
