.class Lcom/netease/mpay/oversea/thirdapi/c$a;
.super Ljava/lang/Object;
.source "ApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/thirdapi/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/netease/mpay/oversea/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/l;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/l;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/thirdapi/c$a;->a:Lcom/netease/mpay/oversea/l;

    iput-object p2, p0, Lcom/netease/mpay/oversea/thirdapi/c$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mpay/oversea/thirdapi/c$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mpay/oversea/thirdapi/c$a;->d:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/thirdapi/c$a;->a:Lcom/netease/mpay/oversea/l;

    iget-object v1, p0, Lcom/netease/mpay/oversea/thirdapi/c$a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/mpay/oversea/thirdapi/c$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/mpay/oversea/thirdapi/c$a;->d:Ljava/util/Set;

    invoke-interface {v0, v1, v2, v3}, Lcom/netease/mpay/oversea/l;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
