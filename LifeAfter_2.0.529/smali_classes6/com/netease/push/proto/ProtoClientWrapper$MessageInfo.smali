.class public Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;
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
    name = "MessageInfo"
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public messages:[Lcom/netease/push/proto/ProtoClientWrapper$Message;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 498
    invoke-static {}, Lcom/netease/push/proto/ProtoClientWrapper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/push/utils/PushLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unmarshalMessageInfo([B)Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 507
    new-instance v0, Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;

    invoke-direct {v0}, Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;-><init>()V

    .line 509
    :try_start_0
    invoke-static {p0}, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->parseFrom([B)Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;

    move-result-object v1

    .line 510
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->id:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;->id:Ljava/lang/String;

    .line 511
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    array-length v2, v2

    .line 512
    new-array v3, v2, [Lcom/netease/push/proto/ProtoClientWrapper$Message;

    iput-object v3, v0, Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;->messages:[Lcom/netease/push/proto/ProtoClientWrapper$Message;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 514
    iget-object v4, v0, Lcom/netease/push/proto/ProtoClientWrapper$MessageInfo;->messages:[Lcom/netease/push/proto/ProtoClientWrapper$Message;

    iget-object v5, v1, Lcom/netease/push/proto/nano/ProtoClient$PbMessageInfo;->messages:[[B

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/netease/push/proto/ProtoClientWrapper$Message;->UnmarshalMessage([B)Lcom/netease/push/proto/ProtoClientWrapper$Message;

    move-result-object v5

    aput-object v5, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 517
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

    .line 518
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public Marshal()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
