.class Lcom/netease/pharos/protocolCheck/ProtocolCheck$2;
.super Ljava/lang/Object;
.source "ProtocolCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/pharos/protocolCheck/ProtocolCheck;->printMessage(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/pharos/protocolCheck/ProtocolCheck;

.field final synthetic val$input:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/netease/pharos/protocolCheck/ProtocolCheck;Ljava/io/InputStream;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck$2;->this$0:Lcom/netease/pharos/protocolCheck/ProtocolCheck;

    iput-object p2, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck$2;->val$input:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 848
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck$2;->val$input:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 849
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 854
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 855
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "LinkCheck"

    .line 856
    invoke-static {v2, v0}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 865
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck$2;->val$input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 867
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 860
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 865
    :try_start_3
    iget-object v0, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck$2;->val$input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_1
    return-void

    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/netease/pharos/protocolCheck/ProtocolCheck$2;->val$input:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 867
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 869
    :goto_3
    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
