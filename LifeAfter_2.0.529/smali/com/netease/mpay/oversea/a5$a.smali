.class Lcom/netease/mpay/oversea/a5$a;
.super Ljava/lang/Object;
.source "LVUHandler.java"

# interfaces
.implements Lcom/netease/mpay/oversea/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/a5;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/netease/mpay/oversea/ea<",
        "Lcom/netease/mpay/oversea/n8;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/netease/mpay/oversea/a5;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/a5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/a5$a;->d:Lcom/netease/mpay/oversea/a5;

    iput-object p2, p0, Lcom/netease/mpay/oversea/a5$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/oversea/a5$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/oversea/a5$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/netease/mpay/oversea/j;)V
    .locals 0

    .line 12
    iget-object p1, p0, Lcom/netease/mpay/oversea/a5$a;->d:Lcom/netease/mpay/oversea/a5;

    invoke-static {p1, p2}, Lcom/netease/mpay/oversea/a5;->a(Lcom/netease/mpay/oversea/a5;Lcom/netease/mpay/oversea/j;)V

    return-void
.end method

.method public a(Lcom/netease/mpay/oversea/n8;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/netease/mpay/oversea/n8;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/oversea/a5$a;->d:Lcom/netease/mpay/oversea/a5;

    iget-object v0, v0, Lcom/netease/mpay/oversea/a5;->f:Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    invoke-virtual {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;->a()Lcom/netease/mpay/oversea/r4;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/q4;

    iget p1, p1, Lcom/netease/mpay/oversea/n8;->a:I

    invoke-virtual {v0, p1}, Lcom/netease/mpay/oversea/q4;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    :goto_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 8
    iget-object v0, p0, Lcom/netease/mpay/oversea/a5$a;->d:Lcom/netease/mpay/oversea/a5;

    invoke-static {v0}, Lcom/netease/mpay/oversea/a5;->a(Lcom/netease/mpay/oversea/a5;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 9
    iget-object p1, p0, Lcom/netease/mpay/oversea/a5$a;->d:Lcom/netease/mpay/oversea/a5;

    invoke-static {p1}, Lcom/netease/mpay/oversea/a5;->b(Lcom/netease/mpay/oversea/a5;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/netease/mpay/oversea/a5$a;->d:Lcom/netease/mpay/oversea/a5;

    iget-object v0, p0, Lcom/netease/mpay/oversea/a5$a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/mpay/oversea/a5$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/a5$a;->c:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/netease/mpay/oversea/a5;->a(Lcom/netease/mpay/oversea/a5;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/netease/mpay/oversea/n8;

    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/a5$a;->a(Lcom/netease/mpay/oversea/n8;)V

    return-void
.end method
