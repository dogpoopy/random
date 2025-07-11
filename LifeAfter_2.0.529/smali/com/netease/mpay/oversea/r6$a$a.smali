.class Lcom/netease/mpay/oversea/r6$a$a;
.super Ljava/lang/Object;
.source "NewGuestView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/r6$a;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/r6$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/r6$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/r6$a$a;->a:Lcom/netease/mpay/oversea/r6$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/r6$a$a;->a:Lcom/netease/mpay/oversea/r6$a;

    iget-object v0, v0, Lcom/netease/mpay/oversea/r6$a;->d:Lcom/netease/mpay/oversea/r6;

    invoke-static {v0}, Lcom/netease/mpay/oversea/r6;->a(Lcom/netease/mpay/oversea/r6;)Lcom/netease/mpay/oversea/s4;

    move-result-object v0

    new-instance v1, Lcom/netease/mpay/oversea/b6;

    sget-object v2, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    new-instance v3, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;

    sget-object v4, Lcom/netease/mpay/oversea/s9;->k:Lcom/netease/mpay/oversea/s9;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;-><init>(Lcom/netease/mpay/oversea/s9;Lcom/netease/mpay/oversea/r4;)V

    const/16 v4, 0x1b

    invoke-direct {v1, v4, v2, v3}, Lcom/netease/mpay/oversea/b6;-><init>(ILcom/netease/mpay/oversea/g6;Lcom/netease/mpay/oversea/ui/TransmissionData$LoginData;)V

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/s4;->b(Lcom/netease/mpay/oversea/x2;)V

    return-void
.end method
