.class final Lcom/netease/ntunisdk/base/SdkBase$76;
.super Ljava/lang/Object;
.source "SdkBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/base/SdkBase;->ntExtendFunc(Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lorg/json/JSONObject;

.field final synthetic e:[Ljava/lang/Object;

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 0

    .line 9209
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$76;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iput-wide p2, p0, Lcom/netease/ntunisdk/base/SdkBase$76;->a:J

    iput-object p4, p0, Lcom/netease/ntunisdk/base/SdkBase$76;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/ntunisdk/base/SdkBase$76;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/ntunisdk/base/SdkBase$76;->e:[Ljava/lang/Object;

    iput-object p7, p0, Lcom/netease/ntunisdk/base/SdkBase$76;->d:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 9212
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cur thread:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/netease/ntunisdk/base/SdkBase$76;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",ui thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniSDK Base"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "call ModulesManager extendFunc"

    .line 9213
    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9214
    invoke-static {}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->getInst()Lcom/netease/ntunisdk/modules/api/ModulesManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$76;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$76;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase$76;->e:[Ljava/lang/Object;

    const-string v4, "unisdkbase"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/netease/ntunisdk/modules/api/ModulesManager;->extendFunc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9215
    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$76;->b:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$76;->d:Lorg/json/JSONObject;

    invoke-static {v1, v2, v0}, Lcom/netease/ntunisdk/base/SdkBase;->a(Lcom/netease/ntunisdk/base/SdkBase;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method
