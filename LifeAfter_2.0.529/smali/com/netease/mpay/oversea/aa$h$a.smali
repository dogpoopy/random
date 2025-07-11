.class Lcom/netease/mpay/oversea/aa$h$a;
.super Ljava/lang/Object;
.source "SecuritySetPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/aa$h;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netease/mpay/oversea/e6;

.field final synthetic c:Lcom/netease/mpay/oversea/aa$h;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/aa$h;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/aa$h$a;->c:Lcom/netease/mpay/oversea/aa$h;

    iput-object p2, p0, Lcom/netease/mpay/oversea/aa$h$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/oversea/aa$h$a;->b:Lcom/netease/mpay/oversea/e6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/aa$h$a;->c:Lcom/netease/mpay/oversea/aa$h;

    iget-object p1, p1, Lcom/netease/mpay/oversea/aa$h;->a:Lcom/netease/mpay/oversea/aa;

    invoke-static {p1}, Lcom/netease/mpay/oversea/aa;->d(Lcom/netease/mpay/oversea/aa;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object p1

    new-instance p2, Lcom/netease/mpay/oversea/ui/i$l;

    sget-object v0, Lcom/netease/mpay/oversea/s9;->g:Lcom/netease/mpay/oversea/s9;

    iget-object v1, p0, Lcom/netease/mpay/oversea/aa$h$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/aa$h$a;->b:Lcom/netease/mpay/oversea/e6;

    invoke-direct {p2, v0, v1, v2}, Lcom/netease/mpay/oversea/ui/i$l;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    iget-object v0, p0, Lcom/netease/mpay/oversea/aa$h$a;->c:Lcom/netease/mpay/oversea/aa$h;

    iget-object v0, v0, Lcom/netease/mpay/oversea/aa$h;->a:Lcom/netease/mpay/oversea/aa;

    .line 3
    invoke-static {v0}, Lcom/netease/mpay/oversea/aa;->c(Lcom/netease/mpay/oversea/aa;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    .line 4
    invoke-virtual {p1, p2, v0}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method
