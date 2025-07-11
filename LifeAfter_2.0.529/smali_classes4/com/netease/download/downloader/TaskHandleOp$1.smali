.class Lcom/netease/download/downloader/TaskHandleOp$1;
.super Ljava/lang/Object;
.source "TaskHandleOp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/download/downloader/TaskHandleOp;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/download/downloader/TaskHandleOp;


# direct methods
.method constructor <init>(Lcom/netease/download/downloader/TaskHandleOp;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string v0, "#"

    const-string v1, ", urlInfo="

    const-string v2, ", range="

    const-string v3, "bytes="

    const-string v4, "TaskHandleOp"

    const-string v5, "TaskHandleOp [start] thread start"

    .line 694
    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$000(Lcom/netease/download/downloader/TaskHandleOp;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;

    if-eqz v5, :cond_32

    .line 697
    iget-object v6, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mObject:Ljava/lang/String;

    .line 698
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TaskHandleOp [start] object="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "HttpCount"

    .line 700
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-wide/16 v8, 0x1

    if-eqz v7, :cond_1

    .line 701
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget-wide v6, v5, Lcom/netease/download/downloader/TaskHandle;->mHttpCount:J

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/netease/download/downloader/TaskHandle;->mHttpCount:J

    goto :goto_0

    :cond_1
    const-string v7, "HttpSuccessCount"

    .line 703
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 704
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget-wide v6, v5, Lcom/netease/download/downloader/TaskHandle;->mHttpSuccessCount:J

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/netease/download/downloader/TaskHandle;->mHttpSuccessCount:J

    goto :goto_0

    :cond_2
    const-string v7, "HttpFailCount"

    .line 706
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 707
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget-wide v6, v5, Lcom/netease/download/downloader/TaskHandle;->mHttpFailCount:J

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/netease/download/downloader/TaskHandle;->mHttpFailCount:J

    goto :goto_0

    :cond_3
    const-string v7, "HttpFailMap"

    .line 709
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 710
    iget v5, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mCode:I

    .line 711
    iget-object v6, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v6}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/download/downloader/TaskHandle;->mHttpFailMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 712
    iget-object v6, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v6}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/download/downloader/TaskHandle;->mHttpFailMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v8

    .line 714
    iget-object v8, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v8}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v8

    iget-object v8, v8, Lcom/netease/download/downloader/TaskHandle;->mHttpFailMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 716
    :cond_4
    iget-object v6, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v6}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/download/downloader/TaskHandle;->mHttpFailMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    const-string v7, "HttpFailFileNameMap"

    .line 719
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "host"

    if-eqz v7, :cond_a

    .line 722
    :try_start_1
    iget v6, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mCode:I

    .line 723
    iget-object v7, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mHeader:Lcom/netease/ntunisdk/okhttp3/Headers;

    .line 724
    invoke-virtual {v7, v10}, Lcom/netease/ntunisdk/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "range"

    .line 725
    invoke-virtual {v7, v9}, Lcom/netease/ntunisdk/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 726
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, ""

    .line 727
    invoke-virtual {v9, v3, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 729
    :cond_6
    iget-object v5, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mUrl:Ljava/lang/String;

    .line 730
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TaskHandleOp [start] headers="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/netease/ntunisdk/okhttp3/Headers;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TaskHandleOp [start] host="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 736
    invoke-static {v5}, Lcom/netease/download/util/Util;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "/"

    .line 737
    invoke-static {v5, v8, v10}, Lcom/netease/download/util/Util;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 738
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TaskHandleOp [start] ip="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 745
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TaskHandleOp [start] [mHttpFailFileNameMap] finalUrlInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iget-object v7, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v7}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/download/downloader/TaskHandle;->mHttpFailFileNameMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 747
    iget-object v7, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v7}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/download/downloader/TaskHandle;->mHttpFailFileNameMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONArray;

    goto :goto_1

    .line 750
    :cond_8
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 753
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    const/16 v9, 0xa

    if-ge v8, v9, :cond_9

    .line 754
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 757
    :cond_9
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/download/downloader/TaskHandle;->mHttpFailFileNameMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    const-string v7, "TaskFileEnterDownloadProcessCoreCount"

    .line 759
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v11, 0x1

    if-eqz v7, :cond_b

    .line 760
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileEnterDownloadProcessCoreCount:I

    add-int/2addr v6, v11

    iput v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileEnterDownloadProcessCoreCount:I

    goto/16 :goto_0

    :cond_b
    const-string v7, "TaskFileEnterDownloadProcessCoreSuccessCount"

    .line 762
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 763
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileEnterDownloadProcessCoreSuccessCount:I

    add-int/2addr v6, v11

    iput v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileEnterDownloadProcessCoreSuccessCount:I

    goto/16 :goto_0

    :cond_c
    const-string v7, "TaskFileEnterDownloadProcessCoreFailCount"

    .line 765
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 766
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileEnterDownloadProcessCoreFailCount:I

    add-int/2addr v6, v11

    iput v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileEnterDownloadProcessCoreFailCount:I

    goto/16 :goto_0

    :cond_d
    const-string v7, "TaskFileEnterDownloadProcessCoreVerifySuccessCount"

    .line 768
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 769
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileEnterDownloadProcessCoreVerifySuccessCount:I

    add-int/2addr v6, v11

    iput v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileEnterDownloadProcessCoreVerifySuccessCount:I

    goto/16 :goto_0

    :cond_e
    const-string v7, "TaskFileEnterDownloadProcessCoreVerifyFailCount"

    .line 771
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 772
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileEnterDownloadProcessCoreVerifyFailCount:I

    add-int/2addr v6, v11

    iput v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileEnterDownloadProcessCoreVerifyFailCount:I

    goto/16 :goto_0

    :cond_f
    const-string v7, "TaskFileSuccessCount"

    .line 774
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 775
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget-wide v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileSuccessCount:J

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileSuccessCount:J

    goto/16 :goto_0

    :cond_10
    const-string v7, "TaskFileFailCount"

    .line 777
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 778
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget-wide v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileFailCount:J

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileFailCount:J

    goto/16 :goto_0

    :cond_11
    const-string v7, "TaskFileHasSuccessCount"

    .line 780
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 781
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileHasSuccessCount:I

    add-int/2addr v6, v11

    iput v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileHasSuccessCount:I

    goto/16 :goto_0

    :cond_12
    const-string v7, "TaskFailCodeMap"

    .line 783
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    goto/16 :goto_0

    :cond_13
    const-string v7, "TaskFailCancelCodeCount"

    .line 795
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 796
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFailCancelCodeCount:I

    add-int/2addr v6, v11

    iput v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFailCancelCodeCount:I

    goto/16 :goto_0

    :cond_14
    const-string v7, "TaskFailCodeCountMap"

    .line 798
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    goto/16 :goto_0

    :cond_15
    const-string v7, "TaskFailFileInfoMap"

    .line 803
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    goto/16 :goto_0

    :cond_16
    const-string v7, "TaskFileEnterDownloadProcessCoreMergeFileCount"

    .line 830
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 831
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileEnterDownloadProcessCoreMergeFileCount:I

    add-int/2addr v6, v11

    iput v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileEnterDownloadProcessCoreMergeFileCount:I

    goto/16 :goto_0

    :cond_17
    const-string v7, "TaskFileEnterDownloadProcessCoreMergeFileVerifySuccessCount"

    .line 833
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 834
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileEnterDownloadProcessCoreMergeFileVerifySuccessCount:I

    add-int/2addr v6, v11

    iput v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileEnterDownloadProcessCoreMergeFileVerifySuccessCount:I

    goto/16 :goto_0

    :cond_18
    const-string v7, "TaskFileEnterDownloadProcessCoreMergeFileVerifyFailCount"

    .line 836
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 837
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileEnterDownloadProcessCoreMergeFileVerifyFailCount:I

    add-int/2addr v6, v11

    iput v6, v5, Lcom/netease/download/downloader/TaskHandle;->mTaskFileEnterDownloadProcessCoreMergeFileVerifyFailCount:I

    goto/16 :goto_0

    :cond_19
    const-string v7, "TaskFileEnterDownloadProcessCoreMergeFileFailCount"

    .line 839
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const-string v7, "ChannelDownloadCostTimeMap"

    .line 842
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 843
    iget-object v6, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mHeader:Lcom/netease/ntunisdk/okhttp3/Headers;

    .line 844
    iget-wide v7, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mTime:J

    .line 845
    invoke-virtual {v6, v10}, Lcom/netease/ntunisdk/okhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 847
    iget-object v6, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v6}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/download/downloader/TaskHandle;->mChannelDownloadCostTimeMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 848
    iget-object v6, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v6}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/download/downloader/TaskHandle;->mChannelDownloadCostTimeMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    add-long/2addr v9, v7

    .line 850
    iget-object v6, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v6}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/download/downloader/TaskHandle;->mChannelDownloadCostTimeMap:Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 853
    :cond_1b
    iget-object v6, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v6}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/download/downloader/TaskHandle;->mChannelDownloadCostTimeMap:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1c
    const-string v7, "TaskHasDownloadVerifySizes"

    .line 856
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 857
    iget-wide v5, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mSize:J

    .line 858
    iget-object v7, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v7}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v8}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v8

    iget-wide v8, v8, Lcom/netease/download/downloader/TaskHandle;->mTaskHasDownloadVerifySizes:J

    add-long/2addr v8, v5

    iput-wide v8, v7, Lcom/netease/download/downloader/TaskHandle;->mTaskHasDownloadVerifySizes:J

    goto/16 :goto_0

    :cond_1d
    const-string v7, "TaskCurTimeDownloadSizes"

    .line 860
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 861
    iget-wide v5, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mSize:J

    .line 862
    iget-object v7, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v7}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v8}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v8

    iget-wide v8, v8, Lcom/netease/download/downloader/TaskHandle;->mTaskCurTimeDownloadSizes:J

    add-long/2addr v8, v5

    iput-wide v8, v7, Lcom/netease/download/downloader/TaskHandle;->mTaskCurTimeDownloadSizes:J

    goto/16 :goto_0

    :cond_1e
    const-string v7, "TaskDownloadFileVerifySizes"

    .line 864
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 865
    iget-wide v5, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mSize:J

    .line 866
    iget-object v7, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v7}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v8}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v8

    iget-wide v8, v8, Lcom/netease/download/downloader/TaskHandle;->mTaskDownloadFileVerifySizes:J

    add-long/2addr v8, v5

    iput-wide v8, v7, Lcom/netease/download/downloader/TaskHandle;->mTaskDownloadFileVerifySizes:J

    goto/16 :goto_0

    :cond_1f
    const-string v7, "TaskDownloadMergeFileVerifySizes"

    .line 868
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 869
    iget-wide v5, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mSize:J

    .line 870
    iget-object v7, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v7}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v7

    iget-object v8, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v8}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v8

    iget-wide v8, v8, Lcom/netease/download/downloader/TaskHandle;->mTaskDownloadMergeFileVerifySizes:J

    add-long/2addr v8, v5

    iput-wide v8, v7, Lcom/netease/download/downloader/TaskHandle;->mTaskDownloadMergeFileVerifySizes:J

    goto/16 :goto_0

    :cond_20
    const-string v7, "ChannelDnsCostTimeMap"

    .line 872
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 873
    iget-object v6, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mUrl:Ljava/lang/String;

    .line 874
    iget-wide v7, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mTime:J

    .line 875
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/download/downloader/TaskHandle;->mChannelDnsCostTimeMap:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_21
    const-string v7, "ChannelDnsIpMap"

    .line 877
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v10, 0x0

    if-eqz v7, :cond_26

    .line 879
    iget-object v6, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mUrl:Ljava/lang/String;

    .line 880
    iget-object v5, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mIp:Ljava/lang/String;

    .line 882
    iget-object v7, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v7}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/download/downloader/TaskHandle;->mChannelDnsIpMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 883
    iget-object v7, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v7}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/download/downloader/TaskHandle;->mChannelDnsIpMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONArray;

    const/4 v8, 0x0

    .line 886
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_23

    .line 887
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    goto :goto_3

    :cond_22
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_23
    const/4 v11, 0x0

    :goto_3
    if-nez v11, :cond_25

    .line 894
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 898
    :cond_24
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 899
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 902
    :cond_25
    :goto_4
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/download/downloader/TaskHandle;->mChannelDnsIpMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_26
    const-string v7, "ChannelHttpdnsIpMap"

    .line 904
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 906
    iget-object v6, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mUrl:Ljava/lang/String;

    .line 907
    iget-object v5, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mIp:Ljava/lang/String;

    .line 909
    iget-object v7, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v7}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/download/downloader/TaskHandle;->mChannelHttpdnsIpMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 910
    iget-object v7, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v7}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/download/downloader/TaskHandle;->mChannelHttpdnsIpMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONArray;

    const/4 v8, 0x0

    .line 913
    :goto_5
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_28

    .line 914
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    goto :goto_6

    :cond_27
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_28
    const/4 v11, 0x0

    :goto_6
    if-nez v11, :cond_2a

    .line 921
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7

    .line 925
    :cond_29
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 926
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 929
    :cond_2a
    :goto_7
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/download/downloader/TaskHandle;->mChannelHttpdnsIpMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2b
    const-string v7, "ChannelSpeedMap"

    .line 931
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 933
    iget-wide v6, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mSize:J

    add-long/2addr v8, v6

    const-wide/32 v10, 0x80000

    cmp-long v12, v8, v10

    if-lez v12, :cond_0

    .line 936
    iget-object v10, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mUrl:Ljava/lang/String;

    .line 937
    iget-wide v11, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mTime:J

    .line 938
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TaskHandleOp [start] [ChannelSpeedMap] size="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", size/time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    long-to-double v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    const-wide/high16 v13, 0x4090000000000000L    # 1024.0

    div-double/2addr v6, v13

    long-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v8

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v11, v8

    div-double/2addr v6, v11

    :try_start_2
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/download/downloader/TaskHandle;->mChannelSpeedMap:Ljava/util/HashMap;

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 940
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/download/downloader/TaskHandle;->mChannelSpeedMap:Ljava/util/HashMap;

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONArray;

    .line 941
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    goto :goto_8

    .line 944
    :cond_2c
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 945
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 948
    :goto_8
    iget-object v6, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v6}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/download/downloader/TaskHandle;->mChannelSpeedMap:Ljava/util/HashMap;

    invoke-virtual {v6, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2d
    const-string v7, "RemoveIpsMap"

    .line 950
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 952
    iget-object v6, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mUrl:Ljava/lang/String;

    .line 953
    iget-object v5, v5, Lcom/netease/download/downloader/TaskHandleOp$InfoUnit;->mIp:Ljava/lang/String;

    .line 955
    iget-object v7, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v7}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/download/downloader/TaskHandle;->mRemoveIpsMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 956
    iget-object v7, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v7}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v7

    iget-object v7, v7, Lcom/netease/download/downloader/TaskHandle;->mRemoveIpsMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONArray;

    const/4 v8, 0x0

    .line 959
    :goto_9
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_2f

    .line 960
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2e

    goto :goto_a

    :cond_2e
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_2f
    const/4 v11, 0x0

    :goto_a
    if-nez v11, :cond_31

    .line 967
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_b

    .line 971
    :cond_30
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 972
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 975
    :cond_31
    :goto_b
    iget-object v5, p0, Lcom/netease/download/downloader/TaskHandleOp$1;->this$0:Lcom/netease/download/downloader/TaskHandleOp;

    invoke-static {v5}, Lcom/netease/download/downloader/TaskHandleOp;->access$100(Lcom/netease/download/downloader/TaskHandleOp;)Lcom/netease/download/downloader/TaskHandle;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/download/downloader/TaskHandle;->mRemoveIpsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 985
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskHandleOp [start] Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_32
    return-void
.end method
