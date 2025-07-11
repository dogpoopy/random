.class public Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;
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
    name = "NewIdInfo"
.end annotation


# instance fields
.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UnmarshalNewIdInfo([B)Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 406
    new-instance v0, Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;-><init>()V

    .line 408
    :try_start_0
    invoke-static {p0}, Lcom/netease/push/proto/nano/ProtoClient$PbNewIdInfo;->parseFrom([B)Lcom/netease/push/proto/nano/ProtoClient$PbNewIdInfo;

    move-result-object v1

    .line 409
    iget-object v1, v1, Lcom/netease/push/proto/nano/ProtoClient$PbNewIdInfo;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;->id:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 411
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

    .line 412
    throw v0
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 388
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

    .line 398
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbNewIdInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbNewIdInfo;-><init>()V

    .line 399
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$NewIdInfo;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbNewIdInfo;->id:Ljava/lang/String;

    .line 400
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method
