.class final Lcom/netease/ntunisdk/base/SdkBase$168;
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/netease/ntunisdk/base/SdkBase;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lorg/json/JSONObject;

.field final synthetic f:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/base/SdkBase;JLjava/lang/String;Lorg/json/JSONObject;[Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 9232
    iput-object p1, p0, Lcom/netease/ntunisdk/base/SdkBase$168;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iput-wide p2, p0, Lcom/netease/ntunisdk/base/SdkBase$168;->b:J

    iput-object p4, p0, Lcom/netease/ntunisdk/base/SdkBase$168;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/ntunisdk/base/SdkBase$168;->e:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/netease/ntunisdk/base/SdkBase$168;->f:[Ljava/lang/Object;

    iput-object p7, p0, Lcom/netease/ntunisdk/base/SdkBase$168;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 9235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cur thread:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/netease/ntunisdk/base/SdkBase$168;->b:J

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

    .line 9236
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$168;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$168;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$168;->e:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase$168;->f:[Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->a(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Lorg/json/JSONObject;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9237
    iget-object v0, p0, Lcom/netease/ntunisdk/base/SdkBase$168;->c:Lcom/netease/ntunisdk/base/SdkBase;

    iget-object v1, p0, Lcom/netease/ntunisdk/base/SdkBase$168;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/base/SdkBase$168;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/ntunisdk/base/SdkBase$168;->f:[Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/netease/ntunisdk/base/SdkBase;->a(Lcom/netease/ntunisdk/base/SdkBase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
