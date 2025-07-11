.class Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;
.super Ljava/lang/Object;
.source "TweetDateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/TweetDateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DateFormatter"
.end annotation


# instance fields
.field private currentLocale:Ljava/util/Locale;

.field private final dateFormatArray:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->dateFormatArray:Landroid/support/v4/util/SparseArrayCompat;

    return-void
.end method

.method private declared-synchronized getDateFormat(Landroid/content/res/Resources;I)Ljava/text/DateFormat;
    .locals 2

    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->currentLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->currentLocale:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eq v0, v1, :cond_1

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->currentLocale:Ljava/util/Locale;

    .line 122
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->dateFormatArray:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->dateFormatArray:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_2

    .line 128
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 129
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 130
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->dateFormatArray:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method declared-synchronized formatLongDateString(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 110
    :try_start_0
    sget v0, Lcom/twitter/sdk/android/tweetui/R$string;->tw__relative_date_format_long:I

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->getDateFormat(Landroid/content/res/Resources;I)Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized formatShortDateString(Landroid/content/res/Resources;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 114
    :try_start_0
    sget v0, Lcom/twitter/sdk/android/tweetui/R$string;->tw__relative_date_format_short:I

    invoke-direct {p0, p1, v0}, Lcom/twitter/sdk/android/tweetui/TweetDateUtils$DateFormatter;->getDateFormat(Landroid/content/res/Resources;I)Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
