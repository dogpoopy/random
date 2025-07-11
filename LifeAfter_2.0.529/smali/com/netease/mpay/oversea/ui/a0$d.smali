.class Lcom/netease/mpay/oversea/ui/a0$d;
.super Ljava/lang/Object;
.source "WebViewLogin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/a0;->a(Lcom/netease/mpay/oversea/e6;Lcom/netease/mpay/oversea/t1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/t1;

.field final synthetic b:Lcom/netease/mpay/oversea/e6;

.field final synthetic c:Lcom/netease/mpay/oversea/ui/a0;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/a0;Lcom/netease/mpay/oversea/t1;Lcom/netease/mpay/oversea/e6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/a0$d;->c:Lcom/netease/mpay/oversea/ui/a0;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/a0$d;->a:Lcom/netease/mpay/oversea/t1;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/a0$d;->b:Lcom/netease/mpay/oversea/e6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a0$d;->c:Lcom/netease/mpay/oversea/ui/a0;

    iget-object p2, p1, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v0, Lcom/netease/mpay/oversea/ui/i$l;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    .line 3
    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/a0$d;->a:Lcom/netease/mpay/oversea/t1;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iget-object v2, p0, Lcom/netease/mpay/oversea/ui/a0$d;->b:Lcom/netease/mpay/oversea/e6;

    invoke-direct {v0, p1, v1, v2}, Lcom/netease/mpay/oversea/ui/i$l;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/a0$d;->c:Lcom/netease/mpay/oversea/ui/a0;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 4
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 5
    invoke-virtual {p2, v0, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method
