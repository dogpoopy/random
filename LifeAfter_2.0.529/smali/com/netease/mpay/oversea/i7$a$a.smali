.class Lcom/netease/mpay/oversea/i7$a$a;
.super Ljava/lang/Object;
.source "PNMigrateFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/i7$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/mpay/oversea/i7$a;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/i7$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/mpay/oversea/i7$a$a;->a:Lcom/netease/mpay/oversea/i7$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "hasLocalGuest"

    .line 3
    iget-object v2, p0, Lcom/netease/mpay/oversea/i7$a$a;->a:Lcom/netease/mpay/oversea/i7$a;

    iget-object v2, v2, Lcom/netease/mpay/oversea/i7$a;->c:Lcom/netease/mpay/oversea/i7;

    iget-object v2, v2, Lcom/netease/mpay/oversea/i7;->a:Lcom/netease/mpay/oversea/ib;

    iget-boolean v2, v2, Lcom/netease/mpay/oversea/ib;->k:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "uid"

    .line 4
    iget-object v2, p0, Lcom/netease/mpay/oversea/i7$a$a;->a:Lcom/netease/mpay/oversea/i7$a;

    iget-object v2, v2, Lcom/netease/mpay/oversea/i7$a;->c:Lcom/netease/mpay/oversea/i7;

    iget-object v2, v2, Lcom/netease/mpay/oversea/i7;->a:Lcom/netease/mpay/oversea/ib;

    iget-object v2, v2, Lcom/netease/mpay/oversea/ib;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/i7$a$a;->a:Lcom/netease/mpay/oversea/i7$a;

    iget-object v1, v1, Lcom/netease/mpay/oversea/i7$a;->b:Lcom/netease/mpay/oversea/d7;

    new-instance v2, Lcom/netease/mpay/oversea/c9;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/netease/mpay/oversea/c9;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Lcom/netease/mpay/oversea/d7;->a(Lcom/netease/mpay/oversea/c9;)V

    return-void
.end method
