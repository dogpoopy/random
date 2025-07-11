.class public Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;
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
    name = "DevInfo"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public os:Ljava/lang/String;

.field public osver:Ljava/lang/String;

.field public screen:Ljava/lang/String;

.field public supportMpayCmd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 226
    iput-object v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->model:Ljava/lang/String;

    .line 227
    iput-object v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->screen:Ljava/lang/String;

    .line 228
    iput-object v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->os:Ljava/lang/String;

    .line 229
    iput-object v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->osver:Ljava/lang/String;

    .line 230
    iput-object v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->mac:Ljava/lang/String;

    .line 231
    iput-object v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->id:Ljava/lang/String;

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->supportMpayCmd:Z

    return-void
.end method

.method public static UnmarshalDevInfo([B)Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 266
    new-instance v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;-><init>()V

    .line 268
    :try_start_0
    invoke-static {p0}, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->parseFrom([B)Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;

    move-result-object v1

    .line 269
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->model:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->model:Ljava/lang/String;

    .line 270
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->screen:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->screen:Ljava/lang/String;

    .line 271
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->os:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->os:Ljava/lang/String;

    .line 272
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->osver:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->osver:Ljava/lang/String;

    .line 273
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->mac:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->mac:Ljava/lang/String;

    .line 274
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->id:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->id:Ljava/lang/String;

    .line 275
    iget-boolean v1, v1, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->supportMpayCmd:Z

    iput-boolean v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->supportMpayCmd:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse data error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AndroidPush"

    invoke-static {v1, p0}, Lcom/netease/push/utils/PushLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    throw v0
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 235
    invoke-static {}, Lcom/netease/push/proto/ProtoClientWrapper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Marshal()[B
    .locals 2

    .line 245
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;-><init>()V

    .line 248
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->model:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->model:Ljava/lang/String;

    .line 249
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->screen:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->screen:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->os:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->os:Ljava/lang/String;

    .line 251
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->osver:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->osver:Ljava/lang/String;

    .line 252
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->mac:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->mac:Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->id:Ljava/lang/String;

    .line 254
    iget-boolean v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$DevInfo;->supportMpayCmd:Z

    iput-boolean v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbDevInfo;->supportMpayCmd:Z

    .line 260
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method
