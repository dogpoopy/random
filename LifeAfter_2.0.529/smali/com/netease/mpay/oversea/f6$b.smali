.class Lcom/netease/mpay/oversea/f6$b;
.super Ljava/lang/Object;
.source "LoginTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/f6;->b(Lcom/netease/mpay/oversea/j;Lcom/netease/mpay/oversea/ea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/ea;

.field final synthetic b:Lcom/netease/mpay/oversea/f6;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/f6;Lcom/netease/mpay/oversea/ea;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/f6$b;->b:Lcom/netease/mpay/oversea/f6;

    iput-object p2, p0, Lcom/netease/mpay/oversea/f6$b;->a:Lcom/netease/mpay/oversea/ea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/cb;->c()Lcom/netease/mpay/oversea/cb;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/mpay/oversea/f6$b;->b:Lcom/netease/mpay/oversea/f6;

    invoke-static {p2}, Lcom/netease/mpay/oversea/f6;->j(Lcom/netease/mpay/oversea/f6;)Landroid/app/Activity;

    move-result-object p2

    const-string v0, "passport_bind"

    const-string v1, "passport_bind_confirm"

    invoke-virtual {p1, p2, v0, v1}, Lcom/netease/mpay/oversea/cb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/netease/mpay/oversea/f6$b;->b:Lcom/netease/mpay/oversea/f6;

    invoke-static {p1}, Lcom/netease/mpay/oversea/f6;->k(Lcom/netease/mpay/oversea/f6;)Landroid/app/Activity;

    move-result-object p1

    new-instance p2, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v0, Lcom/netease/mpay/oversea/s9;->J:Lcom/netease/mpay/oversea/s9;

    iget-object v1, p0, Lcom/netease/mpay/oversea/f6$b;->b:Lcom/netease/mpay/oversea/f6;

    iget-object v1, v1, Lcom/netease/mpay/oversea/f6;->n:Lcom/netease/mpay/oversea/s9;

    iget-object v1, v1, Lcom/netease/mpay/oversea/s9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/s9;->a(Ljava/lang/String;)Lcom/netease/mpay/oversea/s9;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/f6$b$a;

    invoke-direct {v1, p0}, Lcom/netease/mpay/oversea/f6$b$a;-><init>(Lcom/netease/mpay/oversea/f6$b;)V

    const/4 v2, 0x1

    .line 33
    invoke-virtual {v1, v2}, Lcom/netease/mpay/oversea/r4;->a(Z)Lcom/netease/mpay/oversea/r4;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p2, v0, v3, v1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/r4;)V

    sget-object v0, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    invoke-virtual {p2, v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b(Lcom/netease/mpay/oversea/g6;)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    .line 34
    invoke-virtual {p2, v2}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a(Z)Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    move-result-object p2

    .line 35
    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/m;->c(Landroid/app/Activity;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    return-void
.end method
