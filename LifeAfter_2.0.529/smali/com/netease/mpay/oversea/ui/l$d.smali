.class Lcom/netease/mpay/oversea/ui/l$d;
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
.field final synthetic a:Lcom/netease/mpay/oversea/ui/l;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/ui/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/ui/l$d;->a:Lcom/netease/mpay/oversea/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/l$d;->a:Lcom/netease/mpay/oversea/ui/l;

    new-instance p2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v0, Lcom/netease/mpay/oversea/s9;->k:Lcom/netease/mpay/oversea/s9;

    iget-object v1, p0, Lcom/netease/mpay/oversea/ui/l$d;->a:Lcom/netease/mpay/oversea/ui/l;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    iput-object p2, p1, Lcom/netease/mpay/oversea/ui/o;->b:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/ui/l$d;->a:Lcom/netease/mpay/oversea/ui/l;

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/o;->c()V

    return-void
.end method
