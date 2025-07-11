.class Lcom/netease/mpay/oversea/ui/l$f;
.super Ljava/lang/Object;
.source "GuestLogin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/ui/l;->c(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/j;

.field final synthetic b:Lcom/netease/mpay/oversea/s9;

.field final synthetic c:Lcom/netease/mpay/oversea/ui/l;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/l;Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/s9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/l$f;->c:Lcom/netease/mpay/oversea/ui/l;

    iput-object p2, p0, Lcom/netease/mpay/oversea/ui/l$f;->a:Lcom/netease/mpay/oversea/j;

    iput-object p3, p0, Lcom/netease/mpay/oversea/ui/l$f;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/l$f;->a:Lcom/netease/mpay/oversea/j;

    sget-object p2, Lcom/netease/mpay/oversea/d;->a:Lcom/netease/mpay/oversea/d;

    iput-object p2, p1, Lcom/netease/mpay/oversea/j;->d:Lcom/netease/mpay/oversea/d;

    .line 2
    iget-object p2, p0, Lcom/netease/mpay/oversea/ui/l$f;->c:Lcom/netease/mpay/oversea/ui/l;

    iget-object p2, p2, Lcom/netease/mpay/oversea/ui/o;->k:Lcom/netease/mpay/oversea/ui/i;

    new-instance v0, Lcom/netease/mpay/oversea/ui/i$h;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/l$f;->b:Lcom/netease/mpay/oversea/s9;

    invoke-direct {v0, v1, p1}, Lcom/netease/mpay/oversea/ui/i$h;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/j;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/l$f;->c:Lcom/netease/mpay/oversea/ui/l;

    iget-object p1, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 4
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 5
    invoke-virtual {p2, v0, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method
