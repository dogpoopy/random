.class final Lcom/netease/ntunisdk/base/SdkBase$27;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->dispatchDrpf(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 7174
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$27;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iput-object p2, p0, Lcom/netease/ntunisdk/base/SdkBase$27;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/netease/ntunisdk/base/SdkBase$27;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/base/SdkBase$27;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/ntunisdk/base/SdkBase$27;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 7177
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$27;->a:Lcom/netease/ntunisdk/base/SdkBase;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/base/SdkBase;->getSdkInstMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "messengerKit"

    .line 7178
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7179
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$27;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$27;->b:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$27;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase$27;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase$27;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/ntunisdk/base/SdkBase;->a(Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7181
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$27;->a:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$27;->b:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$27;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase$27;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/ntunisdk/base/SdkBase$27;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/ntunisdk/base/SdkBase;->b(Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
