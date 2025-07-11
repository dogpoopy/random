.class Lcom/netease/ntunisdk/okio/AsyncTimeout$2;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lcom/netease/ntunisdk/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/okio/AsyncTimeout;->source(Lcom/netease/ntunisdk/okio/Source;)Lcom/netease/ntunisdk/okio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/okio/AsyncTimeout;

.field private final synthetic val$source:Lcom/netease/ntunisdk/okio/Source;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/okio/AsyncTimeout;Lcom/netease/ntunisdk/okio/Source;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/ntunisdk/okio/AsyncTimeout$2;->this$0:Lcom/netease/ntunisdk/okio/AsyncTimeout;

    iput-object p2, p0, Lcom/netease/ntunisdk/okio/AsyncTimeout$2;->val$source:Lcom/netease/ntunisdk/okio/Source;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/AsyncTimeout$2;->val$source:Lcom/netease/ntunisdk/okio/Source;

    invoke-interface {v0}, Lcom/netease/ntunisdk/okio/Source;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 256
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/AsyncTimeout$2;->this$0:Lcom/netease/ntunisdk/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/okio/AsyncTimeout;->exit(Z)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 254
    :try_start_1
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/AsyncTimeout$2;->this$0:Lcom/netease/ntunisdk/okio/AsyncTimeout;

    invoke-virtual {v1, v0}, Lcom/netease/ntunisdk/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/okio/AsyncTimeout$2;->this$0:Lcom/netease/ntunisdk/okio/AsyncTimeout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/netease/ntunisdk/okio/AsyncTimeout;->exit(Z)V

    .line 257
    throw v0
.end method

.method public read(Lcom/netease/ntunisdk/okio/Buffer;J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/AsyncTimeout$2;->this$0:Lcom/netease/ntunisdk/okio/AsyncTimeout;

    invoke-virtual {v0}, Lcom/netease/ntunisdk/okio/AsyncTimeout;->enter()V

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/AsyncTimeout$2;->val$source:Lcom/netease/ntunisdk/okio/Source;

    invoke-interface {v0, p1, p2, p3}, Lcom/netease/ntunisdk/okio/Source;->read(Lcom/netease/ntunisdk/okio/Buffer;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p3, 0x1

    .line 244
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/AsyncTimeout$2;->this$0:Lcom/netease/ntunisdk/okio/AsyncTimeout;

    invoke-virtual {v0, p3}, Lcom/netease/ntunisdk/okio/AsyncTimeout;->exit(Z)V

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 242
    :try_start_1
    iget-object p2, p0, Lcom/netease/ntunisdk/okio/AsyncTimeout$2;->this$0:Lcom/netease/ntunisdk/okio/AsyncTimeout;

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/okio/AsyncTimeout;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    :goto_0
    iget-object p2, p0, Lcom/netease/ntunisdk/okio/AsyncTimeout$2;->this$0:Lcom/netease/ntunisdk/okio/AsyncTimeout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/netease/ntunisdk/okio/AsyncTimeout;->exit(Z)V

    .line 245
    throw p1
.end method

.method public timeout()Lcom/netease/ntunisdk/okio/Timeout;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/netease/ntunisdk/okio/AsyncTimeout$2;->this$0:Lcom/netease/ntunisdk/okio/AsyncTimeout;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/ntunisdk/okio/AsyncTimeout$2;->val$source:Lcom/netease/ntunisdk/okio/Source;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
