.class public Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;
.super Ljava/lang/Object;
.source "ProtoClientWrapper.java"

# interfaces
.implements Lcom/netease/push/proto/ProtoClientWrapper$DataMarshal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/push/proto/ProtoClientWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevServiceInfos"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public serviceInfos:[Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

.field public supportMpayCmd:Z

.field public ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 300
    invoke-static {}, Lcom/netease/push/proto/ProtoClientWrapper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unmarshalDevServiceInfos([B)Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 327
    new-instance v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;

    invoke-direct {v0}, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;-><init>()V

    .line 329
    :try_start_0
    invoke-static {p0}, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->parseFrom([B)Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;

    move-result-object v1

    .line 330
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->id:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->id:Ljava/lang/String;

    .line 331
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->ver:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->ver:Ljava/lang/String;

    .line 332
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->key:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->key:Ljava/lang/String;

    .line 333
    iget-boolean v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->supportMpayCmd:Z

    iput-boolean v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->supportMpayCmd:Z

    .line 335
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->serviceinfos:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    array-length v2, v2

    .line 336
    new-array v3, v2, [Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    iput-object v3, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->serviceInfos:[Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 338
    iget-object v4, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->serviceInfos:[Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    aget-object v4, v4, v3

    iget-object v5, v1, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->serviceinfos:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->service:Ljava/lang/String;

    iput-object v5, v4, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;->service:Ljava/lang/String;

    .line 339
    iget-object v4, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->serviceInfos:[Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    aget-object v4, v4, v3

    iget-object v5, v1, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->serviceinfos:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    aget-object v5, v5, v3

    iget-wide v5, v5, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->time:J

    iput-wide v5, v4, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;->time:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse data devserviceinfos error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AndroidPush"

    invoke-static {v1, p0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public Marshal()[B
    .locals 6

    .line 304
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;-><init>()V

    .line 305
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->id:Ljava/lang/String;

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->ver:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->ver:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->ver:Ljava/lang/String;

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->key:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 312
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->key:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->key:Ljava/lang/String;

    .line 314
    :cond_2
    iget-boolean v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->supportMpayCmd:Z

    iput-boolean v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->supportMpayCmd:Z

    .line 315
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->serviceInfos:[Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    array-length v1, v1

    .line 316
    new-array v2, v1, [Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    iput-object v2, v0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->serviceinfos:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 318
    iget-object v3, v0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->serviceinfos:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    new-instance v4, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    invoke-direct {v4}, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;-><init>()V

    aput-object v4, v3, v2

    .line 319
    iget-object v3, v0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->serviceinfos:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    aget-object v3, v3, v2

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->serviceInfos:[Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;->service:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->service:Ljava/lang/String;

    .line 320
    iget-object v3, v0, Lcom/netease/push/proto/nano/ProtoClient$PbLoginInfo;->serviceinfos:[Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfos;->serviceInfos:[Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;

    aget-object v4, v4, v2

    iget-wide v4, v4, Lcom/netease/push/proto/ProtoClientWrapper$ServiceInfo;->time:J

    iput-wide v4, v3, Lcom/netease/push/proto/nano/ProtoClient$PbServiceInfo;->time:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    :cond_3
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method
