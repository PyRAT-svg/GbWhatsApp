.class public Lcom/gbwhatsapq/youbasha/ui/lockV2/patternlockview/utils/RandomUtils;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/gbwhatsapq/youbasha/ui/lockV2/patternlockview/utils/RandomUtils;->a:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "You can not instantiate this class. Use its static utility methods instead"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static randInt()I
    .locals 5

    sget-object v0, Lcom/gbwhatsapq/youbasha/ui/lockV2/patternlockview/utils/RandomUtils;->a:Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    rem-long/2addr v1, v3

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public static randInt(I)I
    .locals 1

    if-lez p0, :cond_0

    invoke-static {}, Lcom/gbwhatsapq/youbasha/ui/lockV2/patternlockview/utils/RandomUtils;->randInt()I

    move-result v0

    rem-int/2addr v0, p0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static randIntArray(I)[I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/gbwhatsapq/youbasha/ui/lockV2/patternlockview/utils/RandomUtils;->randIntArray(II)[I

    move-result-object p0

    return-object p0
.end method

.method public static randIntArray(II)[I
    .locals 3

    const/4 v0, 0x0

    if-gt p1, p0, :cond_0

    new-array p0, v0, [I

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge p0, p1, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [I

    :goto_1
    array-length p1, p0

    if-ge v0, p1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Lcom/gbwhatsapq/youbasha/ui/lockV2/patternlockview/utils/RandomUtils;->randInt(I)I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p0, v0

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method
