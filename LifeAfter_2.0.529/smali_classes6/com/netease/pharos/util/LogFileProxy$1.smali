.class Lcom/netease/pharos/util/LogFileProxy$1;
.super Ljava/lang/Object;
.source "LogFileProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/util/LogFileProxy;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/util/LogFileProxy;


# direct methods
.method constructor <init>(Lcom/netease/pharos/util/LogFileProxy;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "LogFileProxy [Thread] finally IOException ="

    .line 122
    iget-object v0, v1, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v0}, Lcom/netease/pharos/util/LogFileProxy;->access$000(Lcom/netease/pharos/util/LogFileProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v4, "pharos"

    const-string v0, "LogFileProxy [init] LogThread  start success!"

    .line 123
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v5

    move-object v10, v7

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 131
    :goto_0
    :try_start_0
    iget-object v11, v1, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v11}, Lcom/netease/pharos/util/LogFileProxy;->access$100(Lcom/netease/pharos/util/LogFileProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, v1, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v11}, Lcom/netease/pharos/util/LogFileProxy;->access$200(Lcom/netease/pharos/util/LogFileProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v11

    if-eqz v11, :cond_8

    iget-object v11, v1, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v11}, Lcom/netease/pharos/util/LogFileProxy;->access$200(Lcom/netease/pharos/util/LogFileProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "finish"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    if-nez v0, :cond_0

    const/16 v0, 0x32

    .line 134
    iget-object v7, v1, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v7}, Lcom/netease/pharos/util/LogFileProxy;->access$200(Lcom/netease/pharos/util/LogFileProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 136
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 140
    :cond_0
    invoke-virtual {v7, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-ge v8, v9, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 147
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LogFileProxy [write]--> cache size:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    const-wide/16 v11, 0x14

    const/16 v13, 0x1400

    .line 149
    :try_start_1
    new-instance v14, Ljava/io/FileOutputStream;

    iget-object v0, v1, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v0}, Lcom/netease/pharos/util/LogFileProxy;->access$300(Lcom/netease/pharos/util/LogFileProxy;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v14, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    :try_start_2
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 152
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x13

    if-lt v10, v15, :cond_2

    .line 153
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    goto :goto_1

    .line 155
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v15, "UTF-8"

    invoke-virtual {v10, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 157
    :goto_1
    invoke-virtual {v0, v10}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 158
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 159
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->flush()V

    .line 160
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v10, v0

    .line 168
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_2
    iget-object v0, v1, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v0}, Lcom/netease/pharos/util/LogFileProxy;->access$200(Lcom/netease/pharos/util/LogFileProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    if-ge v0, v13, :cond_3

    .line 173
    :try_start_5
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :cond_3
    move-object v10, v14

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v10, v14

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v10, v14

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_6

    :catch_3
    move-exception v0

    .line 162
    :goto_3
    :try_start_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "LogFileProxy [Thread] IOException ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v10, :cond_4

    .line 166
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v14, v0

    .line 168
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_4
    :goto_4
    iget-object v0, v1, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v0}, Lcom/netease/pharos/util/LogFileProxy;->access$200(Lcom/netease/pharos/util/LogFileProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    if-ge v0, v13, :cond_5

    .line 173
    :try_start_9
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    :cond_5
    :goto_5
    const/4 v0, 0x0

    goto/16 :goto_0

    :goto_6
    if-eqz v10, :cond_6

    .line 166
    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_7

    :catch_6
    move-exception v0

    move-object v7, v0

    .line 168
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_6
    :goto_7
    iget-object v0, v1, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v0}, Lcom/netease/pharos/util/LogFileProxy;->access$200(Lcom/netease/pharos/util/LogFileProxy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    if-ge v0, v13, :cond_7

    .line 173
    :try_start_c
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 177
    :catch_7
    :cond_7
    :try_start_d
    throw v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    :catch_8
    move-exception v0

    .line 180
    iget-object v2, v1, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v2}, Lcom/netease/pharos/util/LogFileProxy;->access$400(Lcom/netease/pharos/util/LogFileProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LogFileProxy [Thread] InterruptedException ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_8
    iget-object v0, v1, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v0, v5}, Lcom/netease/pharos/util/LogFileProxy;->access$202(Lcom/netease/pharos/util/LogFileProxy;Ljava/util/concurrent/BlockingQueue;)Ljava/util/concurrent/BlockingQueue;

    .line 184
    iget-object v0, v1, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v0}, Lcom/netease/pharos/util/LogFileProxy;->access$400(Lcom/netease/pharos/util/LogFileProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 185
    iget-object v0, v1, Lcom/netease/pharos/util/LogFileProxy$1;->this$0:Lcom/netease/pharos/util/LogFileProxy;

    invoke-static {v0}, Lcom/netease/pharos/util/LogFileProxy;->access$000(Lcom/netease/pharos/util/LogFileProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "LogFileProxy [init] LogThread  stopped"

    .line 186
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
