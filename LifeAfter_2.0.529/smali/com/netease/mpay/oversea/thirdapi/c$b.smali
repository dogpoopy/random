.class Lcom/netease/mpay/oversea/thirdapi/c$b;
.super Ljava/lang/Object;
.source "ApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/c;->a(Lcom/netease/mpay/oversea/thirdapi/e;Lcom/netease/mpay/oversea/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/l;

.field final synthetic b:Lcom/netease/mpay/oversea/thirdapi/e;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/l;Lcom/netease/mpay/oversea/thirdapi/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/c$b;->a:Lcom/netease/mpay/oversea/l;

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/c$b;->b:Lcom/netease/mpay/oversea/thirdapi/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/c$b;->a:Lcom/netease/mpay/oversea/l;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/c$b;->b:Lcom/netease/mpay/oversea/thirdapi/e;

    invoke-interface {v0, v1}, Lcom/netease/mpay/oversea/l;->a(Lcom/netease/mpay/oversea/thirdapi/e;)V

    return-void
.end method
