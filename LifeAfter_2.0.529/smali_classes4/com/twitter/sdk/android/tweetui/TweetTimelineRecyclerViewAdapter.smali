.class public Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TweetTimelineRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$Builder;,
        Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$ReplaceTweetCallback;,
        Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT_FILTERS_JSON_MSG:Ljava/lang/String; = "{\"total_filters\":0}"

.field static final TOTAL_FILTERS_JSON_PROP:Ljava/lang/String; = "total_filters"


# instance fields
.field protected actionCallback:Lcom/twitter/sdk/android/core/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field protected final context:Landroid/content/Context;

.field final gson:Lcom/google/gson/Gson;

.field private previousCount:I

.field protected final styleResId:I

.field protected final timelineDelegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;"
        }
    .end annotation
.end field

.field protected tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/Timeline;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/tweetui/Timeline<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .line 63
    sget v0, Lcom/twitter/sdk/android/tweetui/R$style;->tw__TweetLightStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/Timeline;ILcom/twitter/sdk/android/core/Callback;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/Timeline;ILcom/twitter/sdk/android/core/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/tweetui/Timeline<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;I",
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;)V"
        }
    .end annotation

    .line 68
    new-instance v2, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-direct {v2, p2}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;-><init>(Lcom/twitter/sdk/android/tweetui/Timeline;)V

    invoke-static {}, Lcom/twitter/sdk/android/tweetui/TweetUi;->getInstance()Lcom/twitter/sdk/android/tweetui/TweetUi;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/TimelineDelegate;ILcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/TweetUi;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/TimelineDelegate;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;I)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 53
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->gson:Lcom/google/gson/Gson;

    if-eqz p1, :cond_0

    .line 85
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->context:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->timelineDelegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    .line 87
    iput p3, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->styleResId:I

    .line 89
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->timelineDelegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    new-instance p2, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$1;

    invoke-direct {p2, p0}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$1;-><init>(Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;)V

    invoke-virtual {p1, p2}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->refresh(Lcom/twitter/sdk/android/core/Callback;)V

    .line 102
    new-instance p1, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$2;

    invoke-direct {p1, p0}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$2;-><init>(Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;)V

    .line 123
    iget-object p2, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->timelineDelegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {p2, p1}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/TimelineDelegate;ILcom/twitter/sdk/android/core/Callback;Lcom/twitter/sdk/android/tweetui/TweetUi;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/sdk/android/tweetui/TimelineDelegate<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;I",
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;",
            "Lcom/twitter/sdk/android/tweetui/TweetUi;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/tweetui/TimelineDelegate;I)V

    .line 74
    new-instance p1, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$ReplaceTweetCallback;

    invoke-direct {p1, p2, p4}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$ReplaceTweetCallback;-><init>(Lcom/twitter/sdk/android/tweetui/TimelineDelegate;Lcom/twitter/sdk/android/core/Callback;)V

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->actionCallback:Lcom/twitter/sdk/android/core/Callback;

    .line 75
    iput-object p5, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    .line 76
    invoke-direct {p0}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->scribeTimelineImpression()V

    return-void
.end method

.method static synthetic access$000(Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->previousCount:I

    return p0
.end method

.method static synthetic access$002(Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->previousCount:I

    return p1
.end method

.method private getJsonMessage(I)Ljava/lang/String;
    .locals 2

    .line 178
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 179
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "total_filters"

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 180
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static getTimelineType(Lcom/twitter/sdk/android/tweetui/Timeline;)Ljava/lang/String;
    .locals 1

    .line 184
    instance-of v0, p0, Lcom/twitter/sdk/android/tweetui/BaseTimeline;

    if-eqz v0, :cond_0

    .line 185
    check-cast p0, Lcom/twitter/sdk/android/tweetui/BaseTimeline;

    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/BaseTimeline;->getTimelineType()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "other"

    return-object p0
.end method

.method private scribeTimelineImpression()V
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->timelineDelegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    instance-of v1, v0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;

    if-eqz v1, :cond_0

    .line 160
    check-cast v0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;

    .line 162
    iget-object v0, v0, Lcom/twitter/sdk/android/tweetui/FilterTimelineDelegate;->timelineFilter:Lcom/twitter/sdk/android/tweetui/TimelineFilter;

    .line 163
    invoke-interface {v0}, Lcom/twitter/sdk/android/tweetui/TimelineFilter;->totalFilters()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->getJsonMessage(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "{\"total_filters\":0}"

    .line 168
    :goto_0
    invoke-static {v0}, Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;->fromMessage(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/ScribeItem;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->timelineDelegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->getTimeline()Lcom/twitter/sdk/android/tweetui/Timeline;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->getTimelineType(Lcom/twitter/sdk/android/tweetui/Timeline;)Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    const/4 v4, 0x0

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/ScribeConstants;->getSyndicatedSdkTimelineNamespace(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribe([Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;)V

    .line 174
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/ScribeConstants;->getTfwClientTimelineNamespace(Ljava/lang/String;)Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetUi;->scribe(Lcom/twitter/sdk/android/core/internal/scribe/EventNamespace;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->timelineDelegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->getCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 41
    check-cast p1, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->onBindViewHolder(Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;I)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->timelineDelegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {v0, p2}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->getItem(I)Lcom/twitter/sdk/android/core/models/Identifiable;

    move-result-object p2

    check-cast p2, Lcom/twitter/sdk/android/core/models/Tweet;

    .line 142
    iget-object p1, p1, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lcom/twitter/sdk/android/tweetui/CompactTweetView;

    .line 143
    invoke-virtual {p1, p2}, Lcom/twitter/sdk/android/tweetui/CompactTweetView;->setTweet(Lcom/twitter/sdk/android/core/models/Tweet;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;
    .locals 2

    .line 133
    new-instance p1, Lcom/twitter/sdk/android/core/models/TweetBuilder;

    invoke-direct {p1}, Lcom/twitter/sdk/android/core/models/TweetBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/models/TweetBuilder;->build()Lcom/twitter/sdk/android/core/models/Tweet;

    move-result-object p1

    .line 134
    new-instance p2, Lcom/twitter/sdk/android/tweetui/CompactTweetView;

    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->context:Landroid/content/Context;

    iget v1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->styleResId:I

    invoke-direct {p2, v0, p1, v1}, Lcom/twitter/sdk/android/tweetui/CompactTweetView;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/models/Tweet;I)V

    .line 135
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->actionCallback:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {p2, p1}, Lcom/twitter/sdk/android/tweetui/CompactTweetView;->setOnActionCallback(Lcom/twitter/sdk/android/core/Callback;)V

    .line 136
    new-instance p1, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;

    invoke-direct {p1, p2}, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter$TweetViewHolder;-><init>(Lcom/twitter/sdk/android/tweetui/CompactTweetView;)V

    return-object p1
.end method

.method public refresh(Lcom/twitter/sdk/android/core/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Callback<",
            "Lcom/twitter/sdk/android/tweetui/TimelineResult<",
            "Lcom/twitter/sdk/android/core/models/Tweet;",
            ">;>;)V"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->timelineDelegate:Lcom/twitter/sdk/android/tweetui/TimelineDelegate;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetui/TimelineDelegate;->refresh(Lcom/twitter/sdk/android/core/Callback;)V

    const/4 p1, 0x0

    .line 128
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/TweetTimelineRecyclerViewAdapter;->previousCount:I

    return-void
.end method
