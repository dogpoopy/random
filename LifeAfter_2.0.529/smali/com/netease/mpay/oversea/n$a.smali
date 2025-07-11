.class Lcom/netease/mpay/oversea/n$a;
.super Ljava/lang/Object;
.source "ApiRefresh.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/n;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/n;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/n$a;->a:Lcom/netease/mpay/oversea/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/n$a;->a:Lcom/netease/mpay/oversea/n;

    iget-object v1, v0, Lcom/netease/mpay/oversea/n;->a:Landroid/app/Activity;

    iget-object v0, v0, Lcom/netease/mpay/oversea/n;->c:Lcom/netease/mpay/oversea/y5;

    new-instance v2, Lcom/netease/mpay/oversea/n$a$a;

    invoke-direct {v2, p0}, Lcom/netease/mpay/oversea/n$a$a;-><init>(Lcom/netease/mpay/oversea/n$a;)V

    invoke-static {v1, v0, v2}, Lcom/netease/mpay/oversea/thirdapi/d;->a(Landroid/app/Activity;Lcom/netease/mpay/oversea/y5;Lcom/netease/mpay/oversea/l;)V

    return-void
.end method
