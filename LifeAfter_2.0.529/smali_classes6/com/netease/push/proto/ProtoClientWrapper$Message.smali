.class public Lcom/netease/push/proto/ProtoClientWrapper$Message;
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
    name = "Message"
.end annotation


# instance fields
.field public channelId:Ljava/lang/String;

.field public channelName:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public ext:Ljava/lang/String;

.field public ext2:Ljava/lang/String;

.field public groupId:Ljava/lang/String;

.field public groupName:Ljava/lang/String;

.field public mode:I

.field public notifyid:I

.field public packagename:Ljava/lang/String;

.field public reqid:Ljava/lang/String;

.field public service:Ljava/lang/String;

.field public sound:Ljava/lang/String;

.field public time:J

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static UnmarshalMessage([B)Lcom/netease/push/proto/ProtoClientWrapper$Message;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 467
    new-instance v0, Lcom/netease/push/proto/ProtoClientWrapper$Message;

    invoke-direct {v0}, Lcom/netease/push/proto/ProtoClientWrapper$Message;-><init>()V

    .line 469
    :try_start_0
    invoke-static {p0}, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->parseFrom([B)Lcom/netease/push/proto/nano/ProtoClient$PbMessage;

    move-result-object v1

    .line 470
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->content:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->content:Ljava/lang/String;

    .line 471
    iget-wide v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->time:J

    iput-wide v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->time:J

    .line 472
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->service:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->service:Ljava/lang/String;

    .line 473
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->packagename:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->packagename:Ljava/lang/String;

    .line 474
    iget v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->mode:I

    iput v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->mode:I

    .line 475
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->ext:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->ext:Ljava/lang/String;

    .line 476
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->ext2:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->ext2:Ljava/lang/String;

    .line 477
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->channelId:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->channelId:Ljava/lang/String;

    .line 478
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->channelName:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->channelName:Ljava/lang/String;

    .line 479
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->groupId:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->groupId:Ljava/lang/String;

    .line 480
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->groupName:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->groupName:Ljava/lang/String;

    .line 481
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->title:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->title:Ljava/lang/String;

    .line 482
    iget v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->notifyid:I

    iput v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->notifyid:I

    .line 483
    iget-object v2, v1, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->reqid:Ljava/lang/String;

    iput-object v2, v0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->reqid:Ljava/lang/String;

    .line 484
    iget-object v1, v1, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->sound:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->sound:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 486
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

    .line 487
    throw v0
.end method

.method private patchPlaceholder()V
    .locals 2

    .line 436
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
    .locals 3

    .line 446
    new-instance v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;

    invoke-direct {v0}, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;-><init>()V

    .line 447
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->content:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->content:Ljava/lang/String;

    .line 448
    iget-wide v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->time:J

    iput-wide v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->time:J

    .line 449
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->service:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->service:Ljava/lang/String;

    .line 450
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->packagename:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->packagename:Ljava/lang/String;

    .line 451
    iget v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->mode:I

    iput v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->mode:I

    .line 452
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->ext:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->ext:Ljava/lang/String;

    .line 453
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->ext2:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->ext2:Ljava/lang/String;

    .line 454
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->channelId:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->channelId:Ljava/lang/String;

    .line 455
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->channelName:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->channelName:Ljava/lang/String;

    .line 456
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->groupId:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->groupId:Ljava/lang/String;

    .line 457
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->groupName:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->groupName:Ljava/lang/String;

    .line 458
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->title:Ljava/lang/String;

    .line 459
    iget v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->notifyid:I

    iput v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->notifyid:I

    .line 460
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->reqid:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->reqid:Ljava/lang/String;

    .line 461
    iget-object v1, p0, Lcom/netease/push/proto/ProtoClientWrapper$Message;->sound:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/push/proto/nano/ProtoClient$PbMessage;->sound:Ljava/lang/String;

    .line 462
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method
