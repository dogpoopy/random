.class Lcom/netease/mpay/oversea/g7$a$a$a$a;
.super Ljava/lang/Object;
.source "PNGuestMigrateHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/g7$a$a$a;->a(Ljava/lang/String;Lcom/netease/mpay/oversea/e6;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/e6;

.field final synthetic b:Lcom/netease/mpay/oversea/g7$a$a$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/g7$a$a$a;Lcom/netease/mpay/oversea/e6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/g7$a$a$a$a;->b:Lcom/netease/mpay/oversea/g7$a$a$a;

    iput-object p2, p0, Lcom/netease/mpay/oversea/g7$a$a$a$a;->a:Lcom/netease/mpay/oversea/e6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/netease/mpay/oversea/g7$a$a$a$a;->b:Lcom/netease/mpay/oversea/g7$a$a$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/g7$a$a$a;->a:Lcom/netease/mpay/oversea/g7$a$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/g7$a$a;->a:Lcom/netease/mpay/oversea/g7$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/g7$a;->a:Lcom/netease/mpay/oversea/g7;

    invoke-static {p1}, Lcom/netease/mpay/oversea/g7;->c(Lcom/netease/mpay/oversea/g7;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {}, Lcom/netease/mpay/oversea/g9;->j()Lcom/netease/mpay/oversea/g9;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/mpay/oversea/g9;->i()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/r1;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/netease/mpay/oversea/r1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/mpay/oversea/r1;->c()Lcom/netease/mpay/oversea/t1;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/netease/mpay/oversea/g7$a$a$a$a;->b:Lcom/netease/mpay/oversea/g7$a$a$a;

    iget-object p2, p2, Lcom/netease/mpay/oversea/g7$a$a$a;->a:Lcom/netease/mpay/oversea/g7$a$a;

    iget-object p2, p2, Lcom/netease/mpay/oversea/g7$a$a;->a:Lcom/netease/mpay/oversea/g7$a;

    iget-object p2, p2, Lcom/netease/mpay/oversea/g7$a;->a:Lcom/netease/mpay/oversea/g7;

    invoke-static {p2}, Lcom/netease/mpay/oversea/g7;->d(Lcom/netease/mpay/oversea/g7;)Lcom/netease/mpay/oversea/ui/i;

    move-result-object p2

    new-instance v0, Lcom/netease/mpay/oversea/ui/i$l;

    iget-object v1, p0, Lcom/netease/mpay/oversea/g7$a$a$a$a;->b:Lcom/netease/mpay/oversea/g7$a$a$a;

    iget-object v1, v1, Lcom/netease/mpay/oversea/g7$a$a$a;->a:Lcom/netease/mpay/oversea/g7$a$a;

    iget-object v1, v1, Lcom/netease/mpay/oversea/g7$a$a;->a:Lcom/netease/mpay/oversea/g7$a;

    iget-object v1, v1, Lcom/netease/mpay/oversea/g7$a;->a:Lcom/netease/mpay/oversea/g7;

    iget-object v1, v1, Lcom/netease/mpay/oversea/g7;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    iget-object v1, v1, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->b:Lcom/netease/mpay/oversea/s9;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/netease/mpay/oversea/t1;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iget-object v2, p0, Lcom/netease/mpay/oversea/g7$a$a$a$a;->a:Lcom/netease/mpay/oversea/e6;

    invoke-direct {v0, v1, p1, v2}, Lcom/netease/mpay/oversea/ui/i$l;-><init>(Lcom/netease/mpay/oversea/s9;Ljava/lang/String;Lcom/netease/mpay/oversea/e6;)V

    iget-object p1, p0, Lcom/netease/mpay/oversea/g7$a$a$a$a;->b:Lcom/netease/mpay/oversea/g7$a$a$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/g7$a$a$a;->a:Lcom/netease/mpay/oversea/g7$a$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/g7$a$a;->a:Lcom/netease/mpay/oversea/g7$a;

    iget-object p1, p1, Lcom/netease/mpay/oversea/g7$a;->a:Lcom/netease/mpay/oversea/g7;

    iget-object p1, p1, Lcom/netease/mpay/oversea/g7;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    .line 4
    invoke-virtual {p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object p1

    .line 5
    invoke-virtual {p2, v0, p1}, Lcom/netease/mpay/oversea/ui/i;->a(Lcom/netease/mpay/oversea/ui/i$g;Lcom/netease/mpay/oversea/r4;)V

    return-void
.end method
