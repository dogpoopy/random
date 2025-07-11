.class public Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;
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
    name = "DevServiceInfo"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public service:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 356
    invoke-static {}, Lcom/netease/push/proto/ProtoClientWrapper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unmarshalDevServiceInfo([B)Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 370
    new-instance v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;-><init>()V

    .line 372
    :try_start_0
    invoke-static {p0}, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->parseFrom([B)Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    move-result-object v1

    .line 373
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->id:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->id:Ljava/lang/String;

    .line 374
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->service:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->service:Ljava/lang/String;

    .line 375
    iget-wide v1, v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->time:J

    iput-wide v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->time:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse data devserviceinfo error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AndroidPush"

    invoke-static {v1, p0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    throw v0
.end method


# virtual methods
.method public Marshal()[B
    .locals 3

    .line 360
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;-><init>()V

    .line 361
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->id:Ljava/lang/String;

    .line 362
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->service:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->service:Ljava/lang/String;

    .line 363
    iget-wide v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevServiceInfo;->time:J

    iput-wide v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevServiceInfo;->time:J

    .line 364
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method
