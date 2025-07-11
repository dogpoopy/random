.class final Lcom/netease/ntunisdk/core/logs/Logger$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/core/logs/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/ntunisdk/core/logs/Logger$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/ntunisdk/core/logs/Logger$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/core/logs/Logger$a;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/netease/ntunisdk/core/logs/Logger$a;->d:J

    return-void
.end method


# virtual methods
.method final a()Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v4, p0, Lcom/netease/ntunisdk/core/logs/Logger$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/netease/ntunisdk/core/logs/Logger$a;->a:Ljava/lang/String;

    const-string v6, "277FC6468566CA8C4495D13310441DFA"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/netease/ntunisdk/core/logs/Logger$a;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x3c

    mul-long v3, v3, v5

    mul-long v3, v3, v5

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method
