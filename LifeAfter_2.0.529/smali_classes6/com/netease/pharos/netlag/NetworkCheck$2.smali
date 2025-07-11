.class Lcom/netease/pharos/netlag/NetworkCheck$2;
.super Ljava/lang/Object;
.source "NetworkCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/netlag/NetworkCheck;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/netlag/NetworkCheck;

.field final synthetic val$finalSize:I

.field final synthetic val$maxArraySize:I

.field final synthetic val$resultData:Ljava/util/HashMap;

.field final synthetic val$selector:Ljava/nio/channels/Selector;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/netease/pharos/netlag/NetworkCheck;Ljava/nio/channels/Selector;ILjava/util/HashMap;IJ)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->this$0:Lcom/netease/pharos/netlag/NetworkCheck;

    iput-object p2, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->val$selector:Ljava/nio/channels/Selector;

    iput p3, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->val$finalSize:I

    iput-object p4, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->val$resultData:Ljava/util/HashMap;

    iput p5, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->val$maxArraySize:I

    iput-wide p6, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->val$start:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 103
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->val$selector:Ljava/nio/channels/Selector;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "NetLag "

    if-lez v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->this$0:Lcom/netease/pharos/netlag/NetworkCheck;

    invoke-static {v0}, Lcom/netease/pharos/netlag/NetworkCheck;->access$100(Lcom/netease/pharos/netlag/NetworkCheck;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 104
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->val$selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 105
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->this$0:Lcom/netease/pharos/netlag/NetworkCheck;

    invoke-static {v2}, Lcom/netease/pharos/netlag/NetworkCheck;->access$100(Lcom/netease/pharos/netlag/NetworkCheck;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 108
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/channels/SelectionKey;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 110
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/DatagramChannel;

    .line 113
    iget v4, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->val$finalSize:I

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 114
    invoke-virtual {v2, v4}, Ljava/nio/channels/DatagramChannel;->receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;

    move-result-object v5

    check-cast v5, Ljava/net/InetSocketAddress;

    .line 115
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 117
    :goto_1
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 118
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    new-array v7, v7, [B

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 119
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    .line 120
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 122
    :cond_2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 123
    iget-object v4, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->val$resultData:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 124
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget v8, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->val$maxArraySize:I

    if-ge v7, v8, :cond_3

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 127
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data is null:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2}, Ljava/nio/channels/DatagramChannel;->disconnect()Ljava/nio/channels/DatagramChannel;

    .line 130
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v3

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    .line 133
    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v3, :cond_1

    .line 135
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 136
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->close()V

    goto/16 :goto_0

    .line 141
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UDP Test Total Cost:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->val$start:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->this$0:Lcom/netease/pharos/netlag/NetworkCheck;

    invoke-static {v0}, Lcom/netease/pharos/netlag/NetworkCheck;->access$200(Lcom/netease/pharos/netlag/NetworkCheck;)Lcom/netease/pharos/netlag/NetworkCheckListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->this$0:Lcom/netease/pharos/netlag/NetworkCheck;

    invoke-static {v0}, Lcom/netease/pharos/netlag/NetworkCheck;->access$100(Lcom/netease/pharos/netlag/NetworkCheck;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    .line 143
    new-instance v0, Lcom/netease/pharos/netlag/UDPCostComputer;

    invoke-direct {v0}, Lcom/netease/pharos/netlag/UDPCostComputer;-><init>()V

    iget-object v1, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->this$0:Lcom/netease/pharos/netlag/NetworkCheck;

    invoke-static {v1}, Lcom/netease/pharos/netlag/NetworkCheck;->access$300(Lcom/netease/pharos/netlag/NetworkCheck;)Lcom/netease/pharos/netlag/NetworkCheckConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/pharos/netlag/NetworkCheckConfig;->mIpInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->val$resultData:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->this$0:Lcom/netease/pharos/netlag/NetworkCheck;

    invoke-static {v3}, Lcom/netease/pharos/netlag/NetworkCheck;->access$300(Lcom/netease/pharos/netlag/NetworkCheck;)Lcom/netease/pharos/netlag/NetworkCheckConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/pharos/netlag/NetworkCheckConfig;->getLagPks()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/pharos/netlag/UDPCostComputer;->compute(Ljava/util/ArrayList;Ljava/util/HashMap;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->this$0:Lcom/netease/pharos/netlag/NetworkCheck;

    invoke-static {v1}, Lcom/netease/pharos/netlag/NetworkCheck;->access$200(Lcom/netease/pharos/netlag/NetworkCheck;)Lcom/netease/pharos/netlag/NetworkCheckListener;

    move-result-object v1

    invoke-static {v0}, Lcom/netease/pharos/netlag/NetworkResult;->success(Lorg/json/JSONObject;)Lcom/netease/pharos/netlag/NetworkResult;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/netease/pharos/netlag/NetworkCheckListener;->callBack(Lcom/netease/pharos/netlag/NetworkResult;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->val$selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    .line 147
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 150
    :try_start_7
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->val$selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 152
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 155
    :goto_4
    iget-object v0, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->this$0:Lcom/netease/pharos/netlag/NetworkCheck;

    invoke-static {v0}, Lcom/netease/pharos/netlag/NetworkCheck;->access$100(Lcom/netease/pharos/netlag/NetworkCheck;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 150
    :goto_5
    :try_start_8
    iget-object v1, p0, Lcom/netease/pharos/netlag/NetworkCheck$2;->val$selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    .line 152
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    :goto_6
    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method
